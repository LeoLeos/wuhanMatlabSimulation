%���ﵽ����Ǳ������Ϊȷ��,�������Ƿ�ȷ��
function data=diagnose(data,period_day)
period_day=period_day+round((2*rand(1,1)-1)*period_day*0.4);%Ǳ�������˶��죬�������������
data(find(data(:,7)>period_day),5)=1;
end