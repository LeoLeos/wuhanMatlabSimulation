%人员流动速度
function data=shift_speed(data,alpha)
n=size(data,1);
theta=2*rand(n,2)-ones(n,2);
data(:,1:2)=data(:,1:2)-alpha*theta;
data(find(data(:,1)>1),1)=1;
data(find(data(:,1)<0),1)=0;
data(find(data(:,2)>1),2)=1;
data(find(data(:,2)<0),2)=0;
end