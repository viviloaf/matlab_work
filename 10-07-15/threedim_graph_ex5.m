x=-2:0.1:2;y=-3:0.1:3;
[xg, yg]=meshgrid(x,y);
z=1./(1+xg.^4+yg.^4);
contour(xg, yg, z);