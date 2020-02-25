

%n:������prob�������� �������Ƿ���Ǳ���ڣ��������Ƿ��ȣ��������Ƿ�ȷ��������Ƿ���и��룬�����д���Ǳ��������
function data=creat_data(n,prob)
data=zeros(n,7);
data(:,1:4)=rand(n,4);
safe_index=find(data(:,3)>prob);
unsafe_index=find(data(:,3)<prob);
data(safe_index,3)=0;
data(unsafe_index,3)=1;
end
%��Ա�����ٶ�
function data=shift_speed(data,alpha)
theta=2*rand(n,2)-ones(n,2);
data(:,1:2)=data(:,1:2)-alpha*theta;
data(find(data(:,1)>1),1)=1;
data(find(data(:,1)<0),1)=0;
data(find(data(:,2)>1),2)=1;
data(find(data(:,2)<0),2)=0;
end
%��ȡ����֮�����
function dis=get_dis(data)
data=data(:,1:2);
dis=pdist2(data);
end
%alpha���Զ���Ϊ��ӵ���ֵ
function infected_mat=neighbour(data,beta)
data=data(:,1:2);
dis=get_dis(data);
infected_mat=dis<beta;
end
%���Ӵ�����Ⱦ��Ա��Ϊ1
function data=notify_infected(data,infected_mat)
for i=1:size(data,1)
    %��Ⱦ��
    if data(i,3)==1
        data(find(infected_mat(i,:)==1),3)=1;
    end
end
end
%����Ⱦ�߽��и��룬�����д�Ⱦ�ԣ����Խ����ֵĸ�Ⱦ���޳�index 1xN����
function data =isolats(data,index)
data(index,3)=0;
end
%������Ⱦ��δ��Ⱦͼ
function creat_plot(data)
safe_index=find(data(:,3)==0);
unsafe_index=find(data(:,3)==1);
plot(data(safe_index,1),data(safe_index,2),'r*');
plot(data(unsafe_index,1),data(unsafe_index,2),'b*');
end


    