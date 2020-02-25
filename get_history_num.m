%存储每日历史各项指标下的人数
function [history_period_num,history_feve_num,history_diagnose_num] = save_history_num(data)
[period_num,fever_num,diagnose_num]=get_all_index_num(data);
history_period_num=[];
history_feve_num=[];
history_diagnose_num=[];

history_period_num=[history_period_num,period_num];
history_feve_num=[history_feve_num,fever_num];
history_diagnose_num=[history_diagnose_num,diagnose_num];
end