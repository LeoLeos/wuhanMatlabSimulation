%����ÿ����ʷ����ָ������
function plot_index(history_period_num,history_crease_diagnose_num_per_day,history_diagnose_num,S,I,R)
subplot(2,2,1)
title('ȷ�ﻼ�ߺʹ���Ǳ���ڻ�������')
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
title('ȷ��������������ȷ���Ȭ���ߣ�')
hold off
end