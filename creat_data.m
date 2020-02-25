
%n:个体数prob患病概率 第三列是否处于潜伏期，第四列是否发热，第五列是否确诊，
%第六列是否进行隔离，第七列处于潜伏期天数，第八列为确诊后进行治疗天数
function data=creat_data(n,prob)
data=zeros(n,8);
data(:,1:4)=rand(n,4);
safe_index=find(data(:,3)>prob);
unsafe_index=find(data(:,3)<prob);
data(safe_index,3)=0;
data(unsafe_index,3)=1;
end