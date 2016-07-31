 Num = zeros(7,1);
 num = num2cell(Num);
 datetime = clock;
     month = datetime(:,2);
     day = datetime(:,3);
     
     if day == 1 && (month == 2 || month == 4 || month == 6 || month == 9 || month == 11)
         day1 = 31 ;
     else if day == 1 && (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
             day1 = 30;
         else day1 = day -1;
         end
     end
     
     if day1 == 1 && (month == 2 || month == 4 || month == 6 || month == 9 || month == 11)
         day2 = 31;
     else if day1 == 1 && (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
             day2 = 30;
         else day2 = day1 -1;
         end
     end
     if day2 == 1 && (month == 2 || month == 4 || month == 6 || month == 9 || month == 11)
         day3 = 31;
     else if day2 == 1 && (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
             day3 = 30;
         else day3 = day2 -1;
         end
     end
     if day3 == 1 && (month == 2 || month == 4 || month == 6 || month == 9 || month == 11)
         day4 = 31;
     else if day3 == 1 && (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
             day4 = 30;
         else day4 = day3 - 1;
         end
     end
     if day4 == 1 && (month == 2 || month == 4 || month == 6 || month == 9 || month == 11)
         day5 = 31;
     else if day4 == 1 && (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
             day5 = 30;
         else day5 = day4 - 1;
         end
     end
     if day5 == 1 && (month == 2 || month == 4 || month == 6 || month == 9 || month == 11)
         day6 = 31;
     else if day5 == 1 && (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
             day6 = 30;
         else day6 = day5 - 1;
         end
     end
     Month = num2str(month);
     Day = num2str(day);
     Day1 = num2str(day1);
     Day2 = num2str(day2);
     Day3 = num2str(day3);
     Day4 = num2str(day4);
     Day5 = num2str(day5);
     Day6 = num2str(day6);
     date = [Month,'-',Day];
     date1 = [Month,'-',Day1];
     date2 = [Month,'-',Day2];
     date3 = [Month,'-',Day3];
     date4 = [Month,'-',Day4];
     date5 = [Month,'-',Day5];
     date6 = [Month,'-',Day6];
       
     
timeoutA=logintimeout(5) ;
 % Set maximum time allowed for establishing a connection.
 connA = database('test','root', '123456','com.mysql.jdbc.Driver','jdbc:mysql://localhost:3306/test');
 ping(connA) % Check the database status.
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date,'%'),'''',' and type = ''normal'''));
 setdbprefs('Datareturnformat','cellarray');
 cursorA=fetch(cursorA)  % Fetch all rows of data.
 num(7,1)=cursorA.Data % Display the data，save the data in MM

 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date1,'%'),'''',' and type = ''normal'''));
 cursorA=fetch(cursorA);
 num(6,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date2,'%'),'''',' and type = ''normal'''));
 cursorA=fetch(cursorA);
 num(5,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date3,'%'),'''',' and type = ''normal'''));
 cursorA=fetch(cursorA);
 num(4,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date4,'%'),'''',' and type = ''normal'''));
 cursorA=fetch(cursorA);
 num(3,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date5,'%'),'''',' and type = ''normal'''));
 cursorA=fetch(cursorA);
 num(2,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date6,'%'),'''',' and type = ''normal'''));
 cursorA=fetch(cursorA);
 num(1,1)=cursorA.Data;
 y = cell2mat(num);
 
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date,'%'),'''',' and type = ''abnormal'''));
 cursorA=fetch(cursorA);
 num(7,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date1,'%'),'''',' and type = ''abnormal'''));
 cursorA=fetch(cursorA);
 num(6,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date2,'%'),'''',' and type = ''abnormal'''));
 cursorA=fetch(cursorA);
 num(5,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date3,'%'),'''',' and type = ''abnormal'''));
 cursorA=fetch(cursorA);
 num(4,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date4,'%'),'''',' and type = ''abnormal'''));
 cursorA=fetch(cursorA);
 num(3,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date5,'%'),'''',' and type = ''abnormal'''));
 cursorA=fetch(cursorA);
 num(2,1)=cursorA.Data;
 cursorA=exec(connA,strcat('select count(*) from history where time like ''',strcat('2014-',date6,'%'),'''',' and type = ''abnormal'''));
 cursorA=fetch(cursorA);
 num(1,1)=cursorA.Data;
 z = cell2mat(num);
 
close(cursorA) ; % Close the cursor and the connection.
close(connA);
 
 
 
%定义主窗口
hFigure=figure('Color',[1 1 1],'Menubar','none','toolbar','none','position',[300 150 770 500],...
    'name','本周检测信息','Resize','off','NumberTitle', 'off');
movegui(hFigure,'center');

%定义右按钮
h6_button=uicontrol(gcf,'style','pushbutton','string','@新锐科技',...
    'position',[670 0 100 30],'fontsize',12);
a = imread('image.png');
set(h6_button,'cdata',a);


%作图显示坐标
    ha=axes('units','normalized','position',[0 0 1 1]);
    uistack(ha,'down')
    II=imread('image.png');
    image(II)
    colormap gray
    set(ha,'handlevisibility','off','visible','off');
    
    x = [1;2;3;4;5;6;7];
    y = y /2000;
    z = z / 2000; 
    plot(x,y,'r-',x,z,'g*');
    axis([0.23, 8.63, 0,6.3]); %axis range
    set(gca,'xtick',[1:7]);%x axis step set
    set(gca,'color','none');
    datacursormode on;
    title('本周检测情况','FontName','YaHei Consolas Hybrid',...
    'Color',[0.501960813999176 0.501960813999176 0.501960813999176]);
     xlabel('X坐标(单位:日期)');
     ylabel('Y坐标(单位:二千个)');
     legend('正常类','异常类');
     set(gca,'xticklabel',{date6,date5,date4,date3,date2,date1,date});





