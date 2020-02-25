%获取处于潜伏期的人员下标
function period_index=get_period_index(data)
period_index=find(data(:,3)==1);
end
