function [Velo, Vx, Vz]=v_field(nx,nz,ax,az,v0,dx,dz)
Velo=zeros(nz,nx);Vx=zeros(nz,nx);Vz=zeros(nz,nx);

for i=1:nz
    for j=1:nx
        Velo(i,j)=(i-1)*dz*az+(j-1)*dx*ax+v0;
    end
end

for i=1:nz-1
    for j=1:nx
        Vz(i,j)=(Velo(i+1,j)-Velo(i,j))/dz;
    end
end
Vz(nz,:)=Vx(nz-1,:);
for i=1:nz
    for j=1:nx-1
        Vx(i,j)=(Velo(i,j+1)-Velo(i,j))/dx;
    end
end
Vx(:,nx)=Vx(:,nx-1);


