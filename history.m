
 timeoutA=logintimeout(5) ;
 % Set maximum time allowed for establishing a connection.
 connA = database('test','root', '123456','com.mysql.jdbc.Driver','jdbc:mysql://localhost:3306/test');
 ping(connA); % Check the database status.
 cursorA=exec(connA,'select time,type,caozuo from history');
 setdbprefs('Datareturnformat','cellarray');
 cursorA=fetch(cursorA)  % Fetch all rows of data.
 Abn=cursorA.Data;


hFigure=figure('Color',[1 1 1],'Menubar','none','toolbar','none','position',[300 150 770 500],...
    'name','检测历史','Resize','off','NumberTitle', 'off');
movegui(hFigure,'center');

%定义背景图片
hAxes =  axes('Visible','off','Drawmode','fast');
imshow ('image.png','border','tight','initialmagnification','fit');
axis normal;
a = imread('image.png');


h4_button=uicontrol(gcf,'style','pushbutton','string','选择：',...
    'position',[30 425 50 30],'fontsize',12);
set(h4_button,'cdata',a);
hslect1 = uicontrol(gcf,'style','pushbutton','string','全部',...
    'position',[80 425 45 30],'fontsize',12,'foregroundcolor','blue');
set(hslect1,'cdata',a);
hslect2 = uicontrol(gcf,'style','pushbutton','string','|',...
    'position',[120 425 10 30],'fontsize',12,'foregroundcolor','blue');
set(hslect2,'cdata',a);
hslect3 = uicontrol(gcf,'style','pushbutton','string','今天',...
    'position',[128 425 45 30],'fontsize',12,'foregroundcolor','blue');
set(hslect3,'cdata',a);
hslect4 = uicontrol(gcf,'style','pushbutton','string','|',...
    'position',[170 425 10 30],'fontsize',12,'foregroundcolor','blue');
set(hslect4,'cdata',a);

h8_button=uicontrol(gcf,'style','pushbutton','string','正常类型',...
    'position',[178 425 80 30],'fontsize',12,'foregroundcolor','blue');
set(h8_button,'cdata',a);
h9_button=uicontrol(gcf,'style','pushbutton','string','|',...
    'position',[250 425 10 30],'fontsize',12,'foregroundcolor','blue');
set(h9_button,'cdata',a);
h10_button=uicontrol(gcf,'style','pushbutton','string','异常类型',...
    'position',[260 425 80 30],'fontsize',12,'foregroundcolor','blue');
set(h10_button,'cdata',a);


%定义右侧按钮
h6_button=uicontrol(gcf,'style','pushbutton','string','@新锐科技',...
    'position',[670 0 100 30],'fontsize',12);
set(h6_button,'cdata',a);
%定义表格      
cnames = {'时间','类型','操作'}; 
htable = uitable('Data',Abn,'ColumnName',cnames,... 
             'Parent',hFigure,'Position',[30 120 710 300]); 
         

set(hslect1,'callback',[...
  'connA = database(''test'',''root'',''123456'',''com.mysql.jdbc.Driver'',''jdbc:mysql://localhost:3306/test'');,','ping(connA),',...
  'cursorA=exec(connA,''select time,type,caozuo from history  '');,',...
  'cursorA=fetch(cursorA),','Abn=cursorA.Data;,'...
  'set(htable,''Data'',Abn);,',...
]);

set(h8_button,'callback',['connA = database(''test'',''root'',''123456'',''com.mysql.jdbc.Driver'',''jdbc:mysql://localhost:3306/test'');,','ping(connA),',...
  'cursorA=exec(connA,''select time,type,caozuo from history where type = ''''normal'''' '');,',...
  'cursorA=fetch(cursorA),','Abn=cursorA.Data;,'...
  'set(htable,''Data'',Abn);,',...
  ]);
set(h10_button,'callback',['connA = database(''test'',''root'',''123456'',''com.mysql.jdbc.Driver'',''jdbc:mysql://localhost:3306/test'');,','ping(connA),',...
  'cursorA=exec(connA,''select time,type,caozuo from history where type = ''''abnormal'''' '');,',...
  'cursorA=fetch(cursorA),','Abn=cursorA.Data;,'...
  'set(htable,''Data'',Abn);,',...
  ]);

datetime = clock;
month = datetime(:,2);
day = datetime(:,3);
date = [Month,'-',Day];

today = History(:,2:4);
set(hslect3,'callback','set(htable,''Data'',today);');

%'cursorA=exec(connA,strcat(''select time type caozuo from history where time like '''''',strcat(''2014-'',date,''%''),''''''''));,'

close(cursorA) ; % Close the cursor and the connection.
close(connA);





