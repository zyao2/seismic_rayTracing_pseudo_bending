function s=slow_ave( p1, p2)
s=0.5*(1.0/getV(p1) + 1.0/getV(p2));
s=2./(getV(p1)+getV(p2));