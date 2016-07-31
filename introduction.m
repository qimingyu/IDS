function introduction()
  
hFigure=figure('Color',[1 1 1],'Menubar','none','toolbar','none','position',[300 150 770 500],...
    'name','系统介绍','Resize','off','NumberTitle', 'off');
movegui(hFigure,'center');

hAxes =  axes('Visible','off','Drawmode','fast');
imshow ('introduction.png','border','tight','initialmagnification','fit');
axis normal;
%movegui(hFigure,'center');
%h = uicontrol('Style','Text','fontsize',16);
%string = {'静态文本框为什么是静态的？','因为不能像编辑框一样滚动显示其中的内容','如果想在静态文本框中多行显示','按照这种方式就可以实现','调用textwrap函数啊！'};
%[outstring,newpos] = textwrap(h,string);
%set(h,'String',outstring,'Position',newpos);

end

