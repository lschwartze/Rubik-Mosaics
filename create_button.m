%creates the buttons and then adds the first face to the plot.
function fig = create_button(img, MAX_WIDTH)
fig = figure("Name", "face");
handles.num = 0;
handles.btn1 = uicontrol('Style', 'PushButton', 'String', 'previous face', ...
             'Units', 'normalized', 'Position', [0.1, 0.1, 0.4, 0.1], ...
             'FontSize', 20, 'Callback', @button_decrement);
handles.btn2 = uicontrol('Style', 'PushButton', 'String', 'next face', ...
             'Units', 'normalized', 'Position', [0.5, 0.1, 0.4, 0.1], ...
             'FontSize', 20, 'Callback', @button_increment);
handles.img = img;
handles.w = MAX_WIDTH;
%[lef, rig, bot, top] = get_split_indices(handles.num,handles.w);
handles.loc = [1,3,1,3];
%imshow(imresize(handles.img(lef:rig, bot:top, :), [10000,10000]));
imshow(imresize(handles.img(handles.loc(3):handles.loc(4), handles.loc(1):handles.loc(2), :), 333, 'nearest'));
title("face of cube " + num2str(handles.num+1))
guidata(fig, handles);
end