%���Ӵ�����Ⱦ��Ա��Ϊ1
function data=notify_infected(data,infected_mat)
for i=1:size(data,1)
    %��Ⱦ��
    if data(i,3)==1
        data(find(infected_mat(i,:)==1),3)=1;
    end
end
end