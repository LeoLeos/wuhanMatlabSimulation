% period_num处于潜伏期人数，
% period_num发热人数，
% diagnose_num确诊人数，
function [period_num,fever_num,diagnose_num]=get_all_index_num(data)
period_num=sum(data(:,3));
fever_num=sum(data(:,4));
diagnose_num=sum(data(:,5));
end