function xinrui()
iFigure=figure('Color',[1 1 1],'Menubar','none','toolbar','none','position',[300 150 770 500],...
    'name','����Ƽ�','Resize','off','NumberTitle', 'off');
movegui(iFigure,'center');

hAxes =  axes('Visible','off','Drawmode','fast');
imshow ('image.png','border','tight','initialmagnification','fit');
axis normal;

h0_button=uicontrol(gcf,'style','pushbutton','position',[30 100 420 360]);
a = imread('team.png');
set(h0_button,'cdata',a);

h1_button=uicontrol(gcf,'style','pushbutton','position',[466 420 180 30],'string','�Ŷ����ƣ�����Ƽ� ','fontsize',13,'foregroundcolor','blue');
b = imread('image.png');
set(h1_button,'cdata',b);
h2_button=uicontrol(gcf,'style','pushbutton','position',[464 380 185 30],'string','����ʱ�䣺2014/3/10','fontsize',13,'foregroundcolor','blue');
set(h2_button,'cdata',b);
h3_button=uicontrol(gcf,'style','pushbutton','position',[470 340 238 30],'string','�Ŷ����ԣ����ⴴ�� �Ƽ�Ϊ��','fontsize',13,'foregroundcolor','blue');
set(h3_button,'cdata',b);
h4_button=uicontrol(gcf,'style','pushbutton','position',[476 300 240 30],'string','�Ŷ�˵���������д��⡢�м���','fontsize',13,'foregroundcolor','blue');
set(h4_button,'cdata',b);
h5_button=uicontrol(gcf,'style','pushbutton','position',[550 260 212 30],'string','ִ�Ÿ�������Ϣ��ȫ����','fontsize',13,'foregroundcolor','blue');
set(h5_button,'cdata',b);
h6_button=uicontrol(gcf,'style','pushbutton','position',[552 220 140 30],'string','��������ÿһ��','fontsize',13,'foregroundcolor','blue');
set(h6_button,'cdata',b);
h7_button=uicontrol(gcf,'style','pushbutton','position',[460 180 240 30],'string','�Ŷӳ�Ա�������ڣ��ӳ���','fontsize',13,'foregroundcolor','blue');
set(h7_button,'cdata',b);
h8_button=uicontrol(gcf,'style','pushbutton','position',[555 140 135 30],'string','��������Ա��','fontsize',13,'foregroundcolor','blue');
set(h8_button,'cdata',b);
h9_button=uicontrol(gcf,'style','pushbutton','position',[555 100 135 30],'string','��   ������Ա��','fontsize',13,'foregroundcolor','blue');
set(h9_button,'cdata',b);








end

