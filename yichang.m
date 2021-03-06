
 f='';
 timeoutA=logintimeout(5) ;
 % Set maximum time allowed for establishing a connection.
 connA = database('test','root', '123456','com.mysql.jdbc.Driver','jdbc:mysql://localhost:3306/test');
 ping(connA); % Check the database status.
 cursorA=exec(connA,'select time,type,caozuo from history where type = ''abnormal''');
 setdbprefs('Datareturnformat','cellarray');
 cursorA=fetch(cursorA)  % Fetch all rows of data.
 Abn=cursorA.Data;


hFigure=figure('Color',[1 1 1],'Menubar','none','toolbar','none','position',[300 150 770 500],...
    'name','异常信息','Resize','off','NumberTitle', 'off');
movegui(hFigure,'center');

%定义背景图片
hAxes =  axes('Visible','off','Drawmode','fast');
imshow ('image.png','border','tight','initialmagnification','fit');
axis normal;
a = imread('image.png');
h3_button=uicontrol(gcf,'style','pushbutton','string','异常类信息',...
    'position',[30 430 110 30],'fontsize',14,'foregroundcolor','blue');
set(h3_button,'cdata',a);

%定义右侧按钮
h6_button=uicontrol(gcf,'style','pushbutton','string','@新锐科技',...
    'position',[670 0 100 30],'fontsize',12);
set(h6_button,'cdata',a);

%定义表格
cnames = {'时间','类型','操作'}; 
htable = uitable('Data',Abn,'ColumnName',cnames,... 
             'Parent',hFigure,'Position',[30 130 710 300]); 

                 
h1_button=uicontrol(gcf,'style','pushbutton','string','添加信任',...
    'position',[565 60 80 30],'fontsize',12);

h2_button=uicontrol(gcf,'style','pushbutton','string','填入要信任的异常类的标号：',...
    'position',[250 60 210 30],'fontsize',12);
set(h2_button,'cdata',a);

h1_edit=uicontrol(gcf,'style','edit',...
    'position',[450 60 100 30],...
    'string','',...
    'callback','f=get(h1_edit,''string'')',...
    'background','w');
h3_button=uicontrol(gcf,'style','pushbutton','string','刷新',...
    'position',[660 60 80 30],'fontsize',12);

   hh = [...
    'a = str2num(f),',...
    'aa = Abn(a,1),',...
    'b=aa{1};,',...
    'abnormal(b);,',...
    ];  
%设置回调函数
set(h1_button,'callback',hh);
set(h3_button,'callback',[...
  'connA = database(''test'',''root'',''123456'',''com.mysql.jdbc.Driver'',''jdbc:mysql://localhost:3306/test'');,','ping(connA),',...
  'cursorA=exec(connA,''select time,type,caozuo from history where type = ''''abnormal'''' '');,',...
  'cursorA=fetch(cursorA),','Abn=cursorA.Data;,'...
  'set(htable,''Data'',Abn);,',...
  'set(h1_edit,''string'','''');,',...
]);
msgbox('修改记录类型时，请在文本框内输入记录的标号（数字）并回车，再单击''添加信任''按钮即可。','操作提示');
close(cursorA) ; % Close the cursor and the connection.
close(connA);