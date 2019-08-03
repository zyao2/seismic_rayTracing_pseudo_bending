function v=getV(p)
global v0 az ax Velo dx dz
x=p.x/dx;
z=p.z/dz;

ix=max(0,floor(x));
iz=max(0,floor(z));
rx=x-ix;
rz=z-iz;

ix=ix+1;iz=iz+1;

v1=Velo(iz,ix);v2=Velo(iz,ix+1);
v3=Velo(iz+1,ix);v4=Velo(iz+1,ix+1);
vv1=v1*(1-rx)+v2*rx;
vv2=v3*(1-rx)+v4*rx;
v=vv1*(1-rz)+vv2*rz;
return;


if(p.z<0)
    v=0.1;
else
    v=az * p.z +ax * p.x + v0; 
end
