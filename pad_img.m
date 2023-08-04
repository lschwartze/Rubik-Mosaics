function img = pad_img(img, MAX_WIDTH)
[a,b,~] = size(img);
padding = [(MAX_WIDTH-a)/2, (MAX_WIDTH-b)/2];
img = padarray(img, [padding(1), padding(2)], 255, 'both');
end