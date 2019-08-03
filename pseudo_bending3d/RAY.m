function RAY(o,s)
global ray otherRay npts max_npts
ray=cell(max_npts,1);
otherRay=cell(max_npts,1);
ray{1} = o;

ray{2}=midPoint(o, s);
ray{3}=s;
npts = 3;