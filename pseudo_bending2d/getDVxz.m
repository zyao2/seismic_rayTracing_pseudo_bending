function [dvx,dvz]=getDVxz(p) 
global ax az Vx Vz dx dz
ix=max(1,floor(p.x/dx));
iz=max(1,floor(p.z/dz));
dvx=Vx(iz,ix);dvz=Vz(iz,ix);
return;
dvx=ax;
dvz=az;
