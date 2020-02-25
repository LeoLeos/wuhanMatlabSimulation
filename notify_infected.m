%将接触被感染人员设为1
function data=notify_infected(data,infected_mat)
for i=1:size(data,1)
    %感染者
    if data(i,3)==1
        data(find(infected_mat(i,:)==1),3)=1;
    end
end
end