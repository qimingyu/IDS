%将历史记录写进数据库

 timeoutA=logintimeout(5);   % Set maximum time allowed for establishing a connection.
 connA = database('test','root','123456','com.mysql.jdbc.Driver','jdbc:mysql://localhost:3306/test'); 
 ping(connA); % Check the database status.
 cursorA=exec(connA,'select count(*) from history');
 setdbprefs('Datareturnformat','cellarray');
 cursorA=fetch(cursorA);  % Fetch all rows of data.
 Abn=cursorA.Data;
 geshu = cell2mat(Abn);
 
senior_predict_label;
[x y] = size(senior_predict_label);
linshi = zeros(x,4);
History  = num2cell(linshi);

for i=1:x
    History(i,1) = {num2str(i+geshu)};
end

for i = 1:x
    Date=clock;
    History(i,2)={strcat(num2str(Date(:,1)),'-',num2str(Date(:,2)),'-',num2str(Date(:,3)),'-',num2str(Date(:,4)),':',num2str(Date(:,5)),':',num2str(Date(:,6)))};
end

for i = 1:x
    if senior_predict_label(i,1)
        History(i,3)= {'abnormal'};
    else
        History(i,3)= {'normal'};
    end
end
History(:,4)= {'No'};

 cursorA=exec(connA,'');
 Colnames = {'hNo','time','type','caozuo'};
 fastinsert(connA,'history',Colnames,History);
 close(cursorA) ;
 close(connA);




