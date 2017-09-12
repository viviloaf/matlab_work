function [ x_pos, t_hist ] = labwork_11_02_15( m, k, C, v_not, x_not,t )
%UNTITLED2 Summary of this function goes here
%   Write a function 
%m=4
%C=4
%k=20
%t=10
%v(t=0)=3
%x(t=0)=0

%c=17.885

disp('Enter values required for function.');disp(' ');


m=input('Enter Mass of Weight (kg): ');
if isempty(m)
    disp('Please Enter a value for m');
    pause (5)
    [ x_pos, t_hist ] = labwork_11_02_15
elseif (m<=0)
    disp('Mass cannot be a zero or a negative value');
    pause(5)
    [ x_pos, t_hist ] = labwork_11_02_15
end

k=input('Enter Spring Coefficent: ');
if (k<=0)
    disp('Spring Coefficent must be greater than 0');
    [ x_pos, t_hist ] = labwork_11_02_15
end
C=input('Enter Damping Factor: ');
n=input('Enter time (s): ');
t=1:.01:n;
v_not=input('Enter Initial Velocity (m/s): ');
x_not=input('Enter distance object is pulled back from equilibrium (m): ');

zeta=(C/(2*sqrt(k*m)));
r1=-C+sqrt(C^2-4*m*k)/(-2*m);
r2=-C-sqrt(C^2-4*m*k)/(-2*m);
a=real(r1);
b=abs(imag(r1));

%Critically Damped
if zeta==1;
    fprintf('Damping Factor %f3.2\n', zeta);
    disp('The system is critically damaged');
    x_pos=(x_not+(v_not-r1*x_not).*t)*exp(1)^(r1.*t);
%     fprintf('Equation for X_position %f3.2\n', x_pos);
%Overdamped
elseif zeta<1;
    fprintf('Damping Factor %f3.2\n', zeta);
    disp('The system is overdamped');
   x_pos=(x_not+(v_not-r2.*x_not).*t).*exp(1).^(r1.*t)+exp(r2.*t).*(r1.*x_not-v_not)./(r1-r2);
%   fprintf('Equation for X_position %f3.2\n', x_pos);
%Underdamped
elseif zeta>1;
    fprintf('Damping Factor %f3.2\n', zeta);
    disp('The system is underdamped');
    x_pos=((1/b)*(((b*x_not)^2+(v_not-a*x_not)^2)^(1/2))*exp(1)^a.*t).*sin(b.*t+atan2((b*x_not)/(v_not-a*x_not)));
 %   fprintf('Equation for X_position %f3.2\n', x_pos);
end
figure
plot(t, x_pos);
end

%plot x location of mass position vs time
%fprintf('The Daming Factor is equal to: %f3.2 \n');
%f3.2 = f(
%sanity check
%time history
%fprintf('The equation of motion is: _________');