function doublePath()
global ray otherRay npts max_npts
j = 0;
for i=2:npts
    j=j+1;
    otherRay{j}.x=ray{i-1}.x;
    otherRay{j}.y=ray{i-1}.y;
    otherRay{j}.z=ray{i-1}.z;
    j=j+1;
    otherRay{j}.x=0.5*(ray{i-1}.x+ ray{i}.x  );
    otherRay{j}.y=0.5*(ray{i-1}.y+ ray{i}.y  );
    otherRay{j}.z=0.5*(ray{i-1}.z+ ray{i}.z  );
end
j=j+1;
otherRay{j}.x = ray{i}.x;
otherRay{j}.y = ray{i}.y;
otherRay{j}.z = ray{i}.z;
tmp=ray;
ray=otherRay;
otherRay=tmp;
npts = npts*2 -1;

