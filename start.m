n=1000;%��Ⱥ��������
prob=0.01;%���ڻ�����
K=1;%����������������Ա�����ٶ������ϵ��
alpha=0.02;%��Ա�����ٶ�
beta=K*alpha;%������������
data=creat_data(n,prob);%��ʼ����Ⱥ
period_day=10;%����Ǳ������
gamma=100;%����������������gamma��������

%���ڴ洢��ʷ����ָ��������
history_period_num=[];%����Ǳ���ڵ�����
history_feve_num=[];%���ڷ����ڵ�����
history_diagnose_num=[0];%����ȷ�������
history_crease_diagnose_num_per_day=[];%ÿ��ȷ����������

%�洢SIRģ�͸���ָ������
S=[];I=[];R=[];

for i =1:200
    
        
    %������Ԥʱ���
    if i>=30
        data =isolats(data);%���ѷ��ָ�Ⱦ�߽��и��룬�����д�Ⱦ��
%         alpha=0.01;%��Ա�����ٶ�
%        alpha=0.000;%��Ա�����ٶ�
       alpha=0.005;%��Ա�����ٶ�
        beta=K*alpha;%������������
    end
    if sum(data(:,3))==size(data,1)
        break
    end
    
    %����һ����Ա������ĸ���λ��
    data=shift_speed(data,alpha);
    infected_mat=neighbour(data,beta);
    data=notify_infected(data,infected_mat);
    subplot(2,2,4)
    creat_plot(data);
    
    %%ÿ����һ�콫��Ⱦ�ߴ���Ǳ���ڵ�������һ,�����д���Ǳ��������
    data=update_at_period_day(data);
    %���ﵽ����Ǳ������Ϊȷ��,�������Ƿ�ȷ��
    data=diagnose(data,period_day);
    data=updata_treat_day(data);
    %��������������gamma�Ļ�����Ϊ��ȫ
    data=treated_succession(data,gamma);
    
    %
    [period_num,fever_num,diagnose_num]=get_all_index_num(data);
    history_period_num=[history_period_num,period_num];
    history_feve_num=[history_feve_num,fever_num];
    history_diagnose_num=[history_diagnose_num,diagnose_num];
    crease=history_diagnose_num(size(history_diagnose_num,2))-history_diagnose_num(size(history_diagnose_num,2)-1);
    history_crease_diagnose_num_per_day=[history_crease_diagnose_num_per_day,crease];
    
    %�׸�����
    S_temp=size(data,1)-sum(data(:,3));
    S=[S,S_temp];
    I_temp=sum(data(:,3))-sum((data(:,6)));
    I=[I,I_temp];
    R_temp=sum(data(:,6));
    R=[R,R_temp];
    
    plot_index(history_period_num,history_crease_diagnose_num_per_day,history_diagnose_num,S,I,R);
    
    pause(0.1)
end

