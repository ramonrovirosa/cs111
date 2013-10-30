%Ball3D.m Graham Guletz Ramon Ro 10/19/2013
%CS111 Fall 2013



function [a] = Ball3D(v, x)
clc;

%Givens
r=.05;
g=-.0981;
delta_t=.03;
alpha=.8;
beta=.99;
x_max=[1-r 1-r 1-r];
x_min=[r r r];
sim_done=0;



%Calculate Solution
figure
while (v(1)~=0||v(2)~=0||v(3)~=0)&&(sim_done==0)%in ML, ~= is 'not equal'
   v(3)=v(3)+delta_t*g;
   x(1)=x(1)+delta_t*v(1);%x
   x(2)=x(2)+delta_t*v(2);%y
   x(3)=x(3)+delta_t*v(3);%z
   if(((x(1)<x_min(1))||(x(1)>x_max(1)))&&(v(1)~=0))
       v(1)=-v(1)*alpha;
       v(2)=v(2)*beta;
       v(3)=v(3)*beta;
       
   end
   if(((x(2)<x_min(2))||(x(2)>x_max(2)))&&(v(2)~=0))
       v(2)=-v(2)*alpha;
       v(1)=v(1)*beta;
       v(3)=v(3)*beta;
   end
   if(((x(3)<x_min(3))||(x(3)>x_max(3)))&&(v(3)~=0))
       v(2)=v(2)*beta;
       v(1)=v(1)*beta;
       v(3)=-v(3)*alpha;
   end
   if(abs(v(1))<.01&&abs(v(2))<.01&&abs(v(3))<.01)
       sim_done=1;
   end
   Draw_Disk3D(x, r);
   pause(.00000005);
end

end

