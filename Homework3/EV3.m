function [a] = EV1()
clc;

EV1=[-0.1675 
     0.9525 
     -0.2544];
EV2=[-0.9561
     -0.1837
     0.2284];
EV3=[0.1788
     0.5891
     0.7880];
ev1=21.7182;
ev2=7.0198;
ev3=-0.739;


t=0;
x1=0;
x2=0;
x3=0;
t_final=3;
dt=.01;
t_plot=t;
x1_plot=x1;
x2_plot=x2;
x3_plot=x3;

while t<t_final
     x1=EV3(1)*cos(ev3*t);
     x2=EV3(2)*cos(ev3*t);
     x3=EV3(3)*cos(ev3*t);
     x1_plot=[x1_plot x1]
     x2_plot=[x2_plot x2]
     x3_plot=[x3_plot x3]
     t_plot=[t_plot t];
     t=t+dt;
end

%Graph and calculate errors
plot(t_plot, x1_plot, t_plot, x2_plot, t_plot, x3_plot);
xlabel('Time');
ylabel('Displacement');
title('Eigenvalue 3 and Eigenvector 3');
legend('Mass 1', 'Mass 2', 'Mass 3');
end