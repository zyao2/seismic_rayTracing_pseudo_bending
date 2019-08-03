function path=streight_line(x1,y1,x2,y2,ds)
dist = sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
nray = floor(dist/ds)+1;
ds = dist / (nray-1);

if(nray==1)
	nray=2;
	ds=dist;
end 
for inode = 1:nray
	sss = ds * (inode-1);
	xray(inode) = x1 + sss * (x2-x1)/dist;
	yray(inode) = y1 + sss * (y2-y1)/dist;
end
path=cell(nray,1);
for k=1:nray
    path{k}.x=xray(k);
    path{k}.z=yray(k);
end
