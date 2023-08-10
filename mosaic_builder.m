close all
%define constants
MAX_WIDTH = 30;
WHITE = [255; 255; 255];
YELLOW = [255; 255; 0];
GREEN = [0; 255; 0];
BLUE = [0; 0; 255];
RED = [255; 0; 0];
ORANGE = [255; 165; 0];
COLORS = [WHITE, YELLOW, GREEN, BLUE, RED, ORANGE];

%get file
[file, path] = uigetfile('*.*');
%check if file was chosen
if isequal(file, 0)
    error("no file chosen");
end

%read image to array
imagefilename = fullfile(path,file);
img = imread(imagefilename);

[a, b, ~] = size(img);

%overwrite each pixel with the color it's closest related to
for i=1:a
    for j=1:b
        tmp = img(i,j,:);
        %dist = vecnorm(COLORS - double(squeeze(tmp)));
        %distance calculated via the redmean method. Euclidean metric is
        %also possible.
        dist = redmean(COLORS, double(squeeze(tmp)));
        [~, closest_match] = min(dist);
        img(i,j,:) = uint8(COLORS(:,closest_match));
    end
end

%resizing
resizer = MAX_WIDTH/max([a,b]);
width = bankers_rule(a*resizer);
length = bankers_rule(b*resizer);

%padding
img = imresize(img, [width, length], 'nearest');
img = pad_img(img, MAX_WIDTH);

figure(2)
imshow(imresize(img, 333, 'nearest'))
create_button(img, MAX_WIDTH)