MAX_WIDTH = 30;
WHITE = [255, 255, 255];
YELLOW = [0, 255, 255];
GREEN = [0, 255, 0];
BLUE = [0, 0, 255];
RED = [255, 0, 0];
ORANGE = [255, 165, 0];

[file, path] = uigetfile('*.jpg');

if isequal(file, 0)
    disp("cancelling execution");
end

imagefilename = fullfile(path,file);
img = imread(imagefilename);

%resizing
[a, b, ~] = size(img);
resizer = MAX_WIDTH/max([a,b]);
width = bankers_rule(a*resizer);
length = bankers_rule(b*resizer);

img = imresize(img, [width, length]);
img = pad_img(img, MAX_WIDTH);
imshow(img)