function closeQuest(hObject,~)

sel = questdlg('ȷ���˳�ϵͳ��','�˳�ȷ��','Yes','No','No');
switch sel
    case 'Yes' 
        delete(hObject);
    case 'No'
        return;
end
end


