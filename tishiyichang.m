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
warndlg(strcat('��⵽',num2str(sum),'���쳣�࣬������������в��'),'����');

else
end
