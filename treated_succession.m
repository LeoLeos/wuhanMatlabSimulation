%将治疗天数大于gamma的患者设为安全
function data=treated_succession(data,gamma)
data(find(data(:,8)>gamma),3:5)=0;
data(find(data(:,8)>gamma),7:size(data,2))=0;
end