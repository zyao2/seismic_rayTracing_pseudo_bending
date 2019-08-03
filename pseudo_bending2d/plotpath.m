function plotpath(path)
n=length(path);
%save aaa;stop
for k=1:n
    xx(k)=path{k}.x;
    yy(k)=path{k}.z;
end
plot(xx,yy);
h = gca;  % Handle to currently active axes
set(h, 'YDir', 'reverse');
%max(yy)