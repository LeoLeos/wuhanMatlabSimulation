%画出每日历史各项指标人数
function plot_index(history_period_num,history_crease_diagnose_num_per_day,history_diagnose_num,S,I,R)
subplot(2,2,1)
title('确诊患者和处于潜伏期患者数量')
plot(history_period_num);
hold on
subplot(2,2,2)
% plot(history_crease_diagnose_num_per_day);
plot(S,'g');
hold on
plot(I,'r');
hold on
plot(R,'b');
hold off
subplot(2,2,3)
plot(history_diagnose_num);
title('确诊人数（不包含确诊后痊愈者）')
hold off
end