function tmp = bankers_rule(a)
tmp = 0;
if mod(floor(a), 2) == 0
    tmp = floor(a);
else
    tmp = ceil(a);
end
end