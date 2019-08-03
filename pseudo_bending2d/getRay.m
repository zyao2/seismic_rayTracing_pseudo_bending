function getRay(maxiter, thred_t)
global ray npts
while(1)
    niter=0;
    while(1)
        niter=niter+1;
        if(niter>=maxiter)
            break;
        end
        t0 = traveltime(npts,ray);
        perturbRay();
  
        t1 = traveltime(npts,ray);
        if(abs(t0-t1)<thred_t )
            break;
        end
    end
    if(2*npts-1>=maxiter)
        break;
    end
    doublePath();
    t2 = traveltime(npts,ray);
    if(abs(t2-t1)<thred_t )
        break;
    end
end
