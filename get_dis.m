%��ȡ����֮��������
function dis=get_dis(data)
data=data(:,1:2);
dis=pdist2(data,data);
end