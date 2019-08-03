function [ray1, npts]=reduceRay(ray)

nray=length(ray);
nray1=floor(nray/8);
ray1=cell(nray1+1,1);
k=0;
for i=1:8:nray
    k=k+1;
    ray1{k}=ray{i};
end
npts=k;



