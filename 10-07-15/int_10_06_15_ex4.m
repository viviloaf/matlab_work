

%w_int=int(sym('3*(sin(4*x))^2)', 0, 5)

z=int(sym('3*t*sin(4*x)^2'), 'x', 3, 5);

z

w=int(sym('3*t*sin(4*x)^2'), 't', 3, 5)

clear all
close all

x=0:.1:1;
y=exp(x);
u=0:0.1:1;

figure
plot(x, y)
figure
plot(x, y, 'c+:')
figure
plot(x, y, 'r*--')
figure
plot(x, y, 'bd')
title('My Plot')
xlabel('X')
ylabel('Y')
grid on
grid off
semilogy(x, y)
semilogx(x, y)
loglog(x, y)
plot(x,y, u, v)
plot(y)
axis([xmin, xmax, ymin, ymax]) % defines limits of plot window, put before plot command
text(xx, yy, 'string')

hold on %uses same window to put in new data
plot(x, y) % new data
close %closes current figure
close all %closes all figures
subplot(n, m, index) %divides figures into n x m windows, puts in multiple figures. put before plot command

