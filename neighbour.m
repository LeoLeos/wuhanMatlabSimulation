%alpha���Զ���Ϊ����������������ֵ
function infected_mat=neighbour(data,beta)
dis=get_dis(data(:,1:2));
infected_mat=dis<beta;
%��ȡ������Ա
infected_mat(find(data(:,6)==1),:)=0;%���ڸ��벻���и�Ⱦ��
infected_mat(:,find(data(:,6)==1))=0;%���ڸ��벻���и�Ⱦ��
%infected_mat(find(data(:,3)==0),:)=0;%û�л��������д�Ⱦ��
%infected_mat(:,find(data(:,3)==0))=0;%û�л��������д�Ⱦ��
end