
x=-3:.1:3;
Y=2:.1:2;

[xg, yg]=meshgrid(x,y);
z=(2*xg.^2).*(2*yg.^2-4);
mesh(xg, yg, z)
surf(xg, yg, z)
%axis([-3, 3, -2, 2])
