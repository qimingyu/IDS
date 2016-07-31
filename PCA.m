%主成分分析
load('data');%原始数据导入，训练数据
%所有主成份分析的精度图表
%load('DATA');%测试用原始数据
DATA;
data_inst=data(:,1:41);
data_label=data(:,42);
test_inst=DATA(:,1:41);
test_label=DATA(:,42);
%所有数据属性进行主成份分析
data_and_test_inst=[data_inst;test_inst];
[data_and_test_coef,data_and_test_score,data_and_test_latent]=princomp(data_and_test_inst);
% data_and_test_latent_percent=100*data_and_test_latent/sum(data_and_test_latent);
% figure;
% pareto(data_and_test_latent_percent);
% title('test');
accuracy_array=zeros(1,41);
for number=1:1:41;
data_exchange=data_and_test_score(1:39678,1:number);
test_exchange=data_and_test_score(39679:54906,1:number);
%tic;
%训练
%senior_model=svmtrain(data_label,data_exchange,'-c 400 -g 0.09');
%toc;
%tic;
%主成份分析之后测试正确率
[senior_predict_label,senior_accuracy,senior_dec_values]=svmpredict(test_label,test_exchange,senior_model);
%toc;
%accuracy_array(1,number)=senior_accuracy(1,1);
end;


