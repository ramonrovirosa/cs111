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
    y = linspace(a, b, m);
    dx = x(2)-x(1);
    dy = y(2)-y(1);
    dt=.2*dx;
    u=zeros(m, m);
    u_prev=zeros(m, m);
    v=zeros(m, m);
    v_prev=zeros(m, m);
    rho=zeros(m,m);
    
    %populate initial rho
    for i=1:m
       for j=1:m
           if(sqrt((x(i)-1)*(x(i)-1)+y(j)*y(j))<.25)
               rho(i,j)=1;
           else
               rho(i,j)=0;
           end
       end
    end

    %boundary conditions
    %u(-pi/2, :)=0;
    %u(pi/2, :)=0;
    %v(:, -pi/2)=0;
    %v(:, pi/2)=0;
       
    figure('Position',[0 scrsz(4)/3 scrsz(3)/2 scrsz(4)/2]);
    %axis([a b a b]);
    
    while(t<t_f)
        mesh(x,y, rho);
        axis ([-pi/2 pi/2 -pi/2 pi/2 0 1.5 ]);
        pause(.05);
        
        for i=1:m
           for j=1:m
              u(i,j)=-cos(x(i))*sin(y(j))*cos(t);
              v(i,j)=sin(x(i))*cos(y(j))*cos(t);
           end
        end
        t=t+dt;
        rho_old=rho;
        for i=2:m-1
           for j=2:m-1
              
                  if(v(i,j)<=0)
                          rho(i,j) = rho(i,j) - v(i,j)*(rho_old(i,j+1)-rho_old(i,j));
                  else
                          rho(i,j) = rho(i,j) - v(i,j)*(rho_old(i,j)-rho_old(i,j-1));
                  end
                  if(u(i,j)<=0)
                          rho(i,j) = rho(i,j) - u(i,j)*(rho_old(i+1,j)-rho_old(i,j));
                  else
                          rho(i,j) = rho(i,j) - u(i,j)*(rho_old(i,j)-rho_old(i-1,j));
                  end
           end
           
        end
       
    end

    %figure('Position',[scrsz(4)/3 scrsz(4)/3 scrsz(3)/2 scrsz(4)/2]);
    %g=quiver(x, y, u, v, 'Color', 'black');
    %drawnow;
    %refreshdata;
    %mesh(x, y, rho);
    %plot(rho, 'b');
    %hold on;
    
    
    
    
    title('Plot for 2D Upwind Scheme');
    %legend('Numerical');
    set(gca, 'XTickLabel', -pi/2:dx:pi/2);
    %hold off;
    
    
    
end
