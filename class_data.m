

%n:个体数prob患病概率 第三列是否处于潜伏期，第四列是否发热，第五列是否确诊，第六列是否进行隔离，第七列处于潜伏期天数
function data=creat_data(n,prob)
data=zeros(n,7);
data(:,1:4)=rand(n,4);
safe_index=find(data(:,3)>prob);
unsafe_index=find(data(:,3)<prob);
data(safe_index,3)=0;
data(unsafe_index,3)=1;
end
%人员流动速度
function data=shift_speed(data,alpha)
theta=2*rand(n,2)-ones(n,2);
data(:,1:2)=data(:,1:2)-alpha*theta;
data(find(data(:,1)>1),1)=1;
data(find(data(:,1)<0),1)=0;
data(find(data(:,2)>1),2)=1;
data(find(data(:,2)<0),2)=0;
end
%获取两点之间距离
function dis=get_dis(data)
data=data(:,1:2);
dis=pdist2(data);
end
%alpha可以定义为令居的阈值
function infected_mat=neighbour(data,beta)
data=data(:,1:2);
dis=get_dis(data);
infected_mat=dis<beta;
end
%将接触被感染人员设为1
function data=notify_infected(data,infected_mat)
for i=1:size(data,1)
    %感染者
    if data(i,3)==1
        data(find(infected_mat(i,:)==1),3)=1;
    end
end
end
%将感染者进行隔离，不具有传染性，所以将发现的感染者剔除index 1xN矩阵
function data =isolats(data,index)
data(index,3)=0;
end
%画出感染与未感染图
function creat_plot(data)
safe_index=find(data(:,3)==0);
unsafe_index=find(data(:,3)==1);
plot(data(safe_index,1),data(safe_index,2),'r*');
plot(data(unsafe_index,1),data(unsafe_index,2),'b*');
end


    