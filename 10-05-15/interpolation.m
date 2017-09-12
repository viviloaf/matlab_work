%This script demonstrates different interpolation techniques

%----------------------------------------------------

%Interpolation
%Three-Dimeisional Plots
%ynew=interpl1(x,y,xnew, 'linear, cubic,');

clc %clear command window
clear all %clear all previous variables
close all %closes all figures
help interpolation
%-----------------------------------------------------
% variables

x=0:(2*pi/10):2*pi;
y=cos(x);
x_new=0:(2*pi/50):2*pi;

%------------------------------------------------------

y_new=interp1(x, y, x_new, 'linear');
subplot(2, 2, 1);
plot(x, y, 'o', x_new, y_new);
title('Linear Approach')

%-------------------------------------------------------
%next part

y_new = interp1(x, y, x_new, 'nearest');
subplot(2, 2, 2);
plot(x, y, 'o', x_new, y_new);
title('Nearest Approach')

%-------------------------------------------------------
%next part

y_new = interp1(x, y, x_new, 'pchip');
subplot(2, 2, 3);
plot(x, y, 'o', x_new, y_new);
title('Cubic Approach')

%-------------------------------------------------------
%next part

y_new = interp1(x, y, x_new, 'spline');
subplot(2, 2, 4);
plot(x, y, 'o', x_new, y_new);
title('Spline Approach')
