
%n:������prob�������� �������Ƿ���Ǳ���ڣ��������Ƿ��ȣ��������Ƿ�ȷ�
%�������Ƿ���и��룬�����д���Ǳ�����������ڰ���Ϊȷ��������������
function data=creat_data(n,prob)
data=zeros(n,8);
data(:,1:4)=rand(n,4);
safe_index=find(data(:,3)>prob);
unsafe_index=find(data(:,3)<prob);
data(safe_index,3)=0;
data(unsafe_index,3)=1;
end