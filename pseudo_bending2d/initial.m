function initial(o,s,max_npts1,v01,vx,vz,dx1,dz1,Velo1, Vx1,Vz1)
global ray otherRay npts max_npts
global v0 az ax Velo Vx Vz dx dz
v0=v01;az=vz;ax=vx;max_npts=max_npts1;
Velo=Velo1;Vx=Vx1;Vz=Vz1;dx=dx1;dz=dz1;
ray=cell(max_npts,1);
otherRay=cell(max_npts,1);
ray{1} = o;
ray{2}=midPoint(o, s);
ray{3}=s;
npts = 3;