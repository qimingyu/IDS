function introduction()
  
hFigure=figure('Color',[1 1 1],'Menubar','none','toolbar','none','position',[300 150 770 500],...
    'name','ϵͳ����','Resize','off','NumberTitle', 'off');
movegui(hFigure,'center');

hAxes =  axes('Visible','off','Drawmode','fast');
imshow ('introduction.png','border','tight','initialmagnification','fit');
axis normal;
%movegui(hFigure,'center');
%h = uicontrol('Style','Text','fontsize',16);
%string = {'��̬�ı���Ϊʲô�Ǿ�̬�ģ�','��Ϊ������༭��һ��������ʾ���е�����','������ھ�̬�ı����ж�����ʾ','�������ַ�ʽ�Ϳ���ʵ��','����textwrap��������'};
%[outstring,newpos] = textwrap(h,string);
%set(h,'String',outstring,'Position',newpos);

end

