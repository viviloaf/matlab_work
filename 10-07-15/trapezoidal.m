x=1:7;
y=[0 3 5 6 1 3 2];

z=trapz(x,y);

x_finer=1:.1:7;
y_finer=interp1(x,y,x_finer,'spline');
z_finer=trapz(x_finer,y_finer);

plot(x,y,x_finer,y_finer,'--')
