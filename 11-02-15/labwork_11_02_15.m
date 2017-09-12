function [ x_pos ] = Untitled2( m, k, C, v_not, x,t )
%UNTITLED2 Summary of this function goes here
%   Write a function 
m=4
C=4
k=20
t=10
v(t=0)=3
x(t=0)=0
disp('Enter values required for function.');disp(' ');
m=input('Enter Mass of Weight (kg): ');
k=input('Enter Spring Coefficent: ');
C=input('Enter Damping Factor: ');
t=input('Enter time (s): ');
v_not=('Enter Initial Velocity (m/s): ');
x_not=('Enter distance object is pulled back from equilibrium (m): ');
C_c=(C/(2*sqrt(k*m)));
r1=-C+sqrt(C^2-4*m*k)/(-2*m);
r2=-C-sqrt(C^2-4*m*k)/(-2*m);
if r1==r2
    x=(x_not+(v_not-r1*x_not)*t)*exp(1)^(r1*t);
else
    x=(1/b)*(b*x_not)^2+*(v_not-
end

end


