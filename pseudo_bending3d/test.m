clear all
close all
global ray otherRay npts max_npts
po.x=0;po.y=0;po.z=0;
ps.x=5;ps.y=10;ps.z=0;
max_npts=1000;
RAY(po,ps);
getRay(100, 1.e-8);

t1 = traveltime(npts,ray)
for k=1:npts
    x(k)=ray{k}.x;
    y(k)=ray{k}.y;
    z(k)=ray{k}.z;
end
figure;hold on
xx=sqrt(x.^2+y.^2);
plot(xx,z)
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse');


%theoretic
ps.x=11.18;
v0=3;a=0.6;
x0=ps.x/2;z0=-v0/a;
R=sqrt(x0^2+z0^2);

cos=x0/R;
sin=sqrt(1-cos^2);
p=sin/v0;
h=R+z0;
v=v0+a*h;
a1=v*(1+cos);a2=v0;
tt=log(a1/a2)/a*2

xx=(0:0.1:ps.x);
zz=sqrt(R^2-(xx-x0).^2)+z0;
tt1=0;
nn=length(xx);
for k=2:nn
    v1=zz(k-1)*a+v0;
    v2=zz(k)*a+v0;
    vv=0.5*(v1+v2);
    ss=0.5*(1/v1+1/v2);
    dd=sqrt((xx(k)-xx(k-1))^2+(zz(k)-zz(k-1))^2);
    tt1=tt1+dd/vv;
end
[tt,t1,tt1]
plot(xx,zz)