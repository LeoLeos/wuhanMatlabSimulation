%������Ⱦ��δ��Ⱦͼ
function creat_plot(data)
safe_index=find(data(:,3)==0);
unsafe_index=find(data(:,3)==1);
diagnose_index=find(data(:,5)==1);
hold off
plot(data(safe_index,1),data(safe_index,2),'g*');
hold on
plot(data(unsafe_index,1),data(unsafe_index,2),'y*');
plot(data(diagnose_index,1),data(diagnose_index,2),'r*');
title('������Ⱥ���̵㣺�����������壬�Ƶ㣺����Ǳ���ڻ��ߣ���㣺ȷ�ﻼ��')
hold off
end