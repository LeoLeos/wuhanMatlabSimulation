% �ڰ���Ϊȷ��������������
function data=updata_treat_day(data)
diagnose_index=find(data(:,5)==1);
data(diagnose_index,8)=data(diagnose_index,8)+1;
end