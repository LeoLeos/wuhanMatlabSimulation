%ÿ����һ�콫��Ⱦ�ߴ���Ǳ���ڵ�������һ,�����д���Ǳ��������
function data=update_at_period_day(data)
period_index=get_period_index(data);
data(period_index,7)=data(period_index,7)+1;
end