function tmp = bankers_rule(a)
tmp = 0;
if mod(int32(a), 2) == 1
    tmp = floor(a);
else
    tmp = ceil(a);
end
end