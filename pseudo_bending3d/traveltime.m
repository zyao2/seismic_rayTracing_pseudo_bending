function t=traveltime(npts,ray)
t = 0;
for i =2:npts
    t=t+seg_traveltime( ray{i-1}, ray{i});
end