function outvar=Draw_Disk2D(vec,r)
n=100;
x=vec(1);
y=vec(2);
for i=1:n
    theta=i*(2*pi/n);
    X(i)=x+r*cos(theta);
    Y(i)=y+r*sin(theta);
end
fill(X,Y,'r'); % fills (in red 'r') the 2-D polygon defined by vectors X and Y
axis ([0 1 0 1]);
title('Bouncing Ball Simulation','FontSize',14);
set(gca,'xtick',[]); set(gca,'xticklabel',[]);
set(gca,'ytick',[]); set(gca,'yticklabel',[]);
end