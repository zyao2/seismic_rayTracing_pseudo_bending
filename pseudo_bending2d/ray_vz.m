function [nray,ray,tt1,tt]=ray_vz(offset,v0,a,dx)
%theoretic
x0=offset/2;z0=-v0/a;
R=sqrt(x0^2+z0^2);

cos=x0/R;
sin=sqrt(1-cos^2);
p=sin/v0;
h=R+z0;
v=v0+a*h;
a1=v*(1+cos);a2=v0;
tt=log(a1/a2)/a*2;

xx=(0:dx:offset);
zz=sqrt(R^2-(xx-x0).^2)+z0;
tt1=0;
nn=length(xx);
for k=2:nn
    v1=zz(k-1)*a+v0;
    v2=zz(k)*a+v0;
    vv=0.5*(v1+v2);
    ss=0.5*(1/v1+1/v2);
    dd=sqrt((xx(k)-xx(k-1))^2+(zz(k)-zz(k-1))^2);
    tt1=tt1+dd*ss;%vv;
end
nray=length(xx);
ray=cell(nray,1);
for k=1:nray
    ray{k}.x=xx(k);
    ray{k}.z=zz(k);
end