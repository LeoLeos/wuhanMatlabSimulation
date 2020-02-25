%将达到病毒潜伏期设为确诊,第五列是否确诊
function data=diagnose(data,period_day)
period_day=period_day+round((2*rand(1,1)-1)*period_day*0.4);%潜伏期因人而异，这里用随机产生
data(find(data(:,7)>period_day),5)=1;
end