%Problem 2
%Ramon Rovirosa and Graham Guletz

function [a] = Problem2()
    scrsz = get(0,'ScreenSize');
    
    m=100;%number of grid points
    a=-pi/2;
    b=pi/2;
    t=0;
    t_f=pi;
    x = linspace(a, b, m);
    dx = x(2)-x(1);
    dt=.2*dx;
    u=zeros(m, m);
    u_prev=zeros(m, m);
    v=zeros(m, m);
    v_prev=zeros(m, m);
    
    %populate initial rho
    for i=1:m
       for j=1:m
           
       end
    end

    figure('Position',[0 scrsz(4)/3 scrsz(3)/2 scrsz(4)/2]);
    axis([a b a b]);
    
    while(t<t_f)
        
        for i=2:m
           
        end
        
        t=t+dt;
    end

    %plot estimate
    %plot(rho, 'b');
    hold on;
    
    
    
    
    title('Plot for c=1');
    legend('Numerical');
    set(gca, 'XTickLabel', -pi/2:dx:pi/2);
    hold off;
    
    
    
end
