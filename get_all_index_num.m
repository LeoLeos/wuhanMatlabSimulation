% period_num����Ǳ����������
% period_num����������
% diagnose_numȷ��������
function [period_num,fever_num,diagnose_num]=get_all_index_num(data)
period_num=sum(data(:,3));
fever_num=sum(data(:,4));
diagnose_num=sum(data(:,5));
end