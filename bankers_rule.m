%resizing of the image is done in such a fashion that each dimension has an
%even number of pixels.
function tmp = bankers_rule(a)
tmp = 0;
if mod(floor(a), 2) == 0
    tmp = floor(a);
else
    tmp = ceil(a);
end
end