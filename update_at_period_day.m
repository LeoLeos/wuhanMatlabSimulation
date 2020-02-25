%每进行一天将感染者处于潜伏期的天数加一,第七列处于潜伏期天数
function data=update_at_period_day(data)
period_index=get_period_index(data);
data(period_index,7)=data(period_index,7)+1;
end