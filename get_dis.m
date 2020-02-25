%获取两点之间距离矩阵
function dis=get_dis(data)
data=data(:,1:2);
dis=pdist2(data,data);
end