%the redmean method for color difference according to wikipedia
function dist = redmean(COLORS, vec)
dist = ones(1,6);
for i=1:6
    col = COLORS(:,i);
    r = (vec(1)+col(1))/2;
    dr = vec(1) - col(1);
    dg = vec(2) - col(2);
    db = vec(3) - col(3);
    tmp = sqrt((2+r/256)*dr^2 + 4*dg^2 + (2+(255-r)/256)*db^2);
    dist(i) = tmp;
end
end