%画出感染与未感染图
function creat_plot(data)
safe_index=find(data(:,3)==0);
unsafe_index=find(data(:,3)==1);
diagnose_index=find(data(:,5)==1);
hold off
plot(data(safe_index,1),data(safe_index,2),'g*');
hold on
plot(data(unsafe_index,1),data(unsafe_index,2),'y*');
plot(data(diagnose_index,1),data(diagnose_index,2),'r*');
title('仿真人群，绿点：处于正常个体，黄点：处于潜伏期患者，红点：确诊患者')
hold off
end