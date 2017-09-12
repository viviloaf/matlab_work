%y=(cos(x))^2
%Due Wendsday
clear all
close all

delta_x=.001;
x=0:delta_x:pi;
func_cos=(cos(x)).^2;

%   Method 1: diff(f(x)) / delta_x
% 
 Method_1=diff(func_cos)/delta_x;
 plot(x(2:end), Method_1);

%   Method 2: Central

Method_2=(func_cos(3:end)-func_cos(1:end-2))/(2*delta_x);
hold on
plot(x(2:end-1), Method_2);

%   Method 3: Backward

Method_3=(func_cos(2:end)-func_cos(1:end-1))/(delta_x);
hold on
plot(x(2:end), Method_3);

%   Method 4: Forward

Method_4=(func_cos(3:end)-func_cos(2:end-1))/(delta_x);
hold on
plot(x(2:end-1), Method_4);

