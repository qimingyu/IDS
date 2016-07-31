
%定义主窗口
hFigure=figure('Color',[1 1 1],'Menubar','none','toolbar','none','position',[300 150 770 500],...
    'name','基于PCA-SVM的网络入侵检测器','Resize','off','NumberTitle', 'off');
set(hFigure,'CloseRequestFcn',@closeQuest);
movegui(hFigure,'center');

%定义菜单
hMnue1=uimenu('parent',hFigure,'label','     首页     ');
hMnue2=uimenu('parent',hFigure,'label','   系统介绍   ');
set(hMnue2,'callback','introduction()');

%定义背景图片
hAxes =  axes('Visible','off','Drawmode','fast');
imshow ('image.png','border','tight','initialmagnification','fit');
axis normal;

a = imread('image.png');
%定义左侧按钮
h1_button=uicontrol(gcf,'style','pushbutton','string','本周检测信息',...
    'position',[400 400 110 40],'fontsize',13,'foregroundcolor','blue','callback','week');
set(h1_button,'cdata',a);
h2_button=uicontrol(gcf,'style','pushbutton','string','/',...
    'position',[510 400 10 40],'fontsize',13,'foregroundcolor','blue');
set(h2_button,'cdata',a);
h3_button=uicontrol(gcf,'style','pushbutton','string','异常类信息',...
    'position',[520 400 90 40],'fontsize',12,'foregroundcolor','blue','callback','yichang');
set(h3_button,'cdata',a);
h4_button=uicontrol(gcf,'style','pushbutton','string','/',...
    'position',[610 400 10 40],'fontsize',13,'foregroundcolor','blue');
set(h4_button,'cdata',a);
h5_button=uicontrol(gcf,'style','pushbutton','string','检测历史',...
    'position',[620 400 80 40],'fontsize',12,'foregroundcolor','blue','callback','history');
set(h5_button,'cdata',a);
h6_button=uicontrol(gcf,'style','pushbutton','string','@新锐科技',...
    'position',[670 0 100 30],'fontsize',12);
set(h6_button,'cdata',a);
set(h6_button,'callback','xinrui()');
h5_button=uicontrol(gcf,'style','pushbutton','string','——————————————————————————————————————————————————）',...
    'position',[20 393 730 10],'fontsize',12,'foregroundcolor','blue');

shuju = History(1:15,2:4);
cnames = {'时间','类型','操作'}; 
htable = uitable('Data',shuju,'ColumnName',cnames,... 
             'Parent',hFigure,'Position',[30 95 710 300]); 
         
       
h5_button=uicontrol(gcf,'style','pushbutton','string','——————————————————————————————————————————————————）',...
    'position',[20 93 730 10],'fontsize',12,'foregroundcolor','blue');

h = clock;
datetime = strcat(num2str(h(:,1)),'-',num2str(h(:,2)),'-',num2str(h(:,3)));
h7_button=uicontrol(gcf,'style','pushbutton','string',datetime,...
    'position',[20 65 60 30],'fontsize',10);
set(h7_button,'cdata',a);

