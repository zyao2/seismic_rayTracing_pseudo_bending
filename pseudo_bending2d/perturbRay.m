function perturbRay()
global ray npts
for i=3:npts   
    ray{i-1}=perturb( ray{i-2}, ray{i});
end
    