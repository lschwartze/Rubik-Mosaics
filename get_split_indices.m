%calculate where to slice the picture to calculate current face.
function [lef, rig, bot, top] = get_split_indices(loc, direction, w)
% lef = mod(3*i-2,MAX_WIDTH);
% rig = mod(3*i-2,MAX_WIDTH)+2;
% bot = 3*ceil(3*i/MAX_WIDTH)-2;
% top = 3*ceil(3*i/MAX_WIDTH);

lef = loc(1);
rig = loc(2);
bot = loc(3);
top = loc(4);

if direction == "inc"
    bot = mod(bot + 3*floor((lef+3)/w),w);
    top = bot+2;
    lef = mod(lef+3, w);
    rig = lef+2;
else
    bot = mod(bot - 3*floor((lef-3)/w),w);
    top = bot+2;
    lef = mod(lef-3, w);
    rig = lef+2;
end
end