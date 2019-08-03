function doublePath()
%global ray otherRay npts max_npts
global ray npts 
otherRay=cell(2*npts-1,1);
j = 0;
for i=2:npts
    j=j+1;
    otherRay{j}.x=ray{i-1}.x;
    otherRay{j}.z=ray{i-1}.z;
    j=j+1;
    otherRay{j}.x=0.5*(ray{i-1}.x+ ray{i}.x  );
    otherRay{j}.z=0.5*(ray{i-1}.z+ ray{i}.z  );
end
j=j+1;
otherRay{j}.x = ray{i}.x;
otherRay{j}.z = ray{i}.z;
ray=otherRay;
npts = npts*2 -1;

