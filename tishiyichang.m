%senior_predict_label;
%a = senior_predict_label;
[m n]=size(senior_predict_label);
sum = 0;
for i = 1:1:m
    if senior_predict_label(i,n) == 1
        sum = sum + 1;
    end
end
if sum 
load handel
sound(y,Fs) 
warndlg(strcat('检测到',num2str(sum),'条异常类，您的网络有威胁！'),'提醒');

else
end
