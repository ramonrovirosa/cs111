function outvar=Draw_Disk3D(vec,r)
    hold off
    [x, y, z] = sphere(250);
    surf(r*x+vec(1),r*y+vec(2),r*z+vec(3));
    daspect([1 1 1]);
    axis([0 1 0 1 0 1]);
end