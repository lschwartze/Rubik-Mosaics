%handles button increments
function button_increment(ButtonH, EventData)
handles = guidata(ButtonH);
handles.num = mod(handles.num + 1, 100);
[a,b,c,d] = get_split_indices(handles.loc, "inc", handles.w);
handles.loc = [a,b,c,d];
%disp(handles.loc)
guidata(ButtonH, handles);
%display(handles.num)
figure(1)
%[lef, rig, bot, top] = get_split_indices(handles.num,handles.w);
imshow(imresize(handles.img(c:d, a:b, :), 333, 'nearest'));
title("face of cube " + num2str(handles.num+1))
end