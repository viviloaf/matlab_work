%y=(cos(x))^2
Due Wendsday

x=0:pi/100:pi;
delta_x=.001;
func_cos=(cos(x)).^2;

%   Method 1: diff(f(x)) / delta_x

Method_1=diff(func_cos)/delta_x;
plot(x(2:end), Method_1);

%   Method 2: Central

Method_2=diff((func_cos+delta_x)-(func_cos-delta_x)./(2*delta_x));
hold on
plot(x(2:end), Method_2);

%   Method 3: Backward

Method_3=diff((func_cos-delta_x)-(func_cos))/delta_x;
hold on
plot(x(2:end), Method_3);

%   Method 4: Forward

Method_4=diff((func_cos+delta_x)-(func_cos))/delta_x;
hold on
plot(x(2:end), Method_4);