%Problem 1
%Ramon Rovirosa and Graham Guletz

function [a] = Problem1()
    scrsz = get(0,'ScreenSize');
    
    %Condition where c=-1
    c=1;
    m=100;%number of grid points
    a=-1;
    b=1;
    t=0;
    t_f=2;
    x = linspace(a, b, m);
    dx = x(2)-x(1);
    dt=.5*dx;
    A=zeros(m, m);
    RHS=zeros(m, 1);
    figure('Position',[0 scrsz(4)/3 scrsz(3)/2 scrsz(4)/2]);
    axis([a b a b]);
    A(1, 1)=-1;
    A(m, m)=-1;
    RHS(1)=1;
    RHS(m)=1;
    
    while(t<t_f)
        %t=t_f;
        for i=2:m-1
          A(i, i)=(1-c*(dt/dx));
          A(i, i-1)=(c*(dt/dx));
          RHS(i)=cos(pi*(x(i)-c*t));
        end
        U=A\RHS;
        t=t+dt;
    end
    plot(U, 'b');
    hold on;
    
    
    T=zeros(0, 100);
    for i=1:100
        T(i)=cos(pi*(x(i)-2));
        i=i+1;
    end
    plot(T,'r');
    title('Plot for c=1');
    legend('Numerical', 'Exact');
    set(gca, 'XTickLabel', -1:.2:1);
    hold off;
    
    %Condition where c=-1
    clc;
    c=-1;
    m=100;%number of grid points
    a=-1;
    b=1;
    t=0;
    t_f=2;
    x = linspace(a, b, m);
    dx = x(2)-x(1);
    dt=.5*dx;
    A=zeros(m, m);
    RHS=zeros(m, 1);
    figure('Position',[scrsz(3)/2 scrsz(4)/3 scrsz(3)/2 scrsz(4)/2]);
    axis([a b a b]);
    A(1, 1)=-1;
    A(m, m)=-1;
    RHS(1)=1;
    RHS(m)=1;
    
    while(t<t_f)
        %t=t_f;
        for i=2:m-1
          A(i, i)=(1+c*(dt/dx));
          A(i, i+1)=(-c*(dt/dx));
          RHS(i)=cos(pi*(x(i)-c*t));
        end
        U=A\RHS;
        t=t+dt;
    end
    plot(U, 'b');
    hold on;
    
    
    T=zeros(0, 100);
    for i=1:100
        T(i)=cos(pi*(x(i)-2));
        i=i+1;
    end
    plot(T,'r');
    title('Plot for c=-1');
    legend('Numerical', 'Exact');
    set(gca, 'XTickLabel', -1:.2:1);
    hold off;
    
    
end



