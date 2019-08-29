function p2=perturb(p1,p3)
mid.x = 0.5*(p1.x+p3.x);
mid.y = 0.5*(p1.y+p3.y);
mid.z = 0.5*(p1.z+p3.z);
dx   = p3.x-p1.x;
dy   = p3.y-p1.y;
dz   = p3.z-p1.z;
L2   = dx^2+dy^2+dz^2;
L    = sqrt(L2);
dvx  = getDvx(mid);
dvy  = getDvy(mid);
dvz  = getDvz(mid);
nL   = dx*dvx+dy*dvy+dz*dvz;
nx   = dvx - nL*dx/L2;
ny   = dvy - nL*dy/L2;
nz   = dvz - nL*dz/L2; 
nl   = sqrt(nx^2+ny^2+nz^2);
nx = nx /nl;
ny = ny/nl;
nz = nz /nl;
if(nx==0 && ny==0 && nz==0)
    p2=mid;
    return;
end
l    = (p3.x-mid.x)^2+(p3.y-mid.y)^2+(p3.z-mid.z)^2;
c    = 2./(getV(p1)+getV(p3)); %(0.5/getV(p1)+0.5/getV(p3) ;

Vm   = getV(mid) ;
ra   = (0.25*(c*Vm+1)/c/(nx*dvx+ny*dvy+nz*dvz))^2;
rb   = 0.5*l/c/Vm;
Rc   = -0.25*(c*Vm+1)/(c*(nx*dvx+ny*dvy+nz*dvz))+sqrt(ra+rb);
xnew = mid.x + nx * Rc;
ynew = mid.y + ny * Rc;
znew = mid.z + nz * Rc;
p2.x = xnew;
p2.y = ynew;
p2.z = znew ;
