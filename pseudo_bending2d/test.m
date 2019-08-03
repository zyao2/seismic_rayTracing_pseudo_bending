clear all
close all
global ray npts 
po.x=0;po.z=0;
ps.x=30;ps.z=0;

nx=100;nz=100;dx=0.5;dz=0.5;
vz=2; vx=0.;v0=3;
[Velo, Vx, Vz]=v_field(nx,nz,vx,vz,v0,dx,dz);
max_npts=1000;
initial(po,ps,max_npts,v0,vx,vz,dx,dz,Velo,Vx,Vz);

getRay(100, 1.e-8);
figure;hold on
plotpath(ray);
t1 = traveltime(npts,ray)
%theretic ray path
offset=abs(po.x-ps.x);
[nray,ray1,tt2,tt]=ray_vz(offset,v0,vz,dx);
t2 = traveltime(nray,ray1)
%figure;
plotpath(ray1);
