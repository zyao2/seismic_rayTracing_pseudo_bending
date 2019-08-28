function p2=perturb(p1,p3)
mid.x = 0.5*(p1.x+p3.x);
mid.z = 0.5*(p1.z+p3.z);
dx   = p3.x-p1.x;
dz   = p3.z-p1.z;
L2   = dx^2+dz^2;
L    = sqrt(L2);

[dvx,dvz]=getDVxz(mid);
nL   = dx*dvx+dz*dvz;
nx   = dvx - nL*dx/L2;
nz   = dvz - nL*dz/L2;
nl   = sqrt(nx^2+nz^2);

if(nl==0)
    nl=1;
end


nx          = nx /nl;
nz          = nz /nl;
if(nx==0 && nz==0)
    p2=mid;
    return;
end
  
l    = (p3.x-mid.x)^2+(p3.z-mid.z)^2;
c    = 2./(getV(p1)+getV(p3)); %(0.5/getV(p1)+0.5/getV(p3) ;
Vm   = getV(mid) ;
ra   = (0.25*(c*Vm+1)/c/(nx*dvx+nz*dvz))^2;
rb   = 0.5*l/c/Vm;
Rc   = -0.25*(c*Vm+1)/(c*(nx*dvx+nz*dvz))+sqrt(ra+rb);
xnew = mid.x + nx * Rc;
znew = mid.z + nz * Rc;
p2.x = xnew;
p2.z = znew ;
