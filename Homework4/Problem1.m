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
    U=zeros(m);
    U=cos(pi*x);

    figure('Position',[0 scrsz(4)/3 scrsz(3)/2 scrsz(4)/2]);
    axis([a b a b]);
    
    while(t<t_f)
        %t=t_f;
        U_prev=U;
        for i=2:m
            U=U_prev-c*(dt/dx)*(U_prev(i)-U_prev(i-1));
        end
        U(1)=U_prev(1)-c*(dt/dx)*(U_prev(1)-U_prev(m));
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
    
    figure('Position',[scrsz(3)/2 scrsz(4)/3 scrsz(3)/2 scrsz(4)/2]);
    axis([a b a b]);

    U=zeros(m);
    U=cos(pi*x);
    
    while(t<t_f)
       %t=t_f;
        U_prev=U;
        for i=1:m-1
            U=U_prev-c*(dt/dx)*(U_prev(i+1)-U_prev(i));
        end
        U(m)=U_prev(m)-c*(dt/dx)*(U_prev(1)-U_prev(m));
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
