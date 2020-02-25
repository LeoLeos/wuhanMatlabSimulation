%alpha可以定义为病毒传播能力的阈值
function infected_mat=neighbour(data,beta)
dis=get_dis(data(:,1:2));
infected_mat=dis<beta;
%获取隔离人员
infected_mat(find(data(:,6)==1),:)=0;%处于隔离不具有感染性
infected_mat(:,find(data(:,6)==1))=0;%处于隔离不具有感染性
%infected_mat(find(data(:,3)==0),:)=0;%没有患病不具有传染性
%infected_mat(:,find(data(:,3)==0))=0;%没有患病不具有传染性
end