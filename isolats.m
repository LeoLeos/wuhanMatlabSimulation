%将感染者进行隔离，不具有传染性，所以将发现的感染者剔除index 1xN矩阵
function data =isolats(data)
data(find(data(:,6)==1),3)=0;
end