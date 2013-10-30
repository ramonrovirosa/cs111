%Ball2D.m Graham Guletz Ramon Ro 10/19/2013
%CS111 Fall 2013



function [a] = Ball2D(v, x)
clc;

%Givens
r=.05;
g=-.0981;
delta_t=.03;
alpha=.8;
beta=.99;
x_max=[1-r 1-r];
x_min=[r r];
sim_done=0;



%Calculate Solution
while (v(1)~=0||v(2)~=0)&&(sim_done==0)%in ML, ~= is 'not equal'
   v(2)=v(2)+delta_t*g;
   x(1)=x(1)+delta_t*v(1);
   x(2)=x(2)+delta_t*v(2);
   if(((x(1)<x_min(1))||(x(1)>x_max(1)))&&(v(1)~=0))
       v(1)=-v(1)*alpha;
       v(2)=v(2)*beta;
   end
   if(((x(2)<x_min(2))||(x(2)>x_max(2)))&&(v(2)~=0))
       v(2)=-v(2)*alpha;
       v(1)=v(1)*beta;
   end
   if(abs(v(1))<.01&&abs(v(2))<.01)
       sim_done=1;
   end
   Draw_Disk2D(x, r);
   pause(.00000005);
end

end

