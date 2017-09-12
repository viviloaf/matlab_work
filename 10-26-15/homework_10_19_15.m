function [ A_x, F, N, alpha ] = homework_10_19_15( m, theta, R, meu_s, meu_k )
%   homework_10_19_15
%   This function calculates the frictional force (F), Normal Force (N),
%   Angular Acceleration (alpha) and acceleration of a disk slipping or
%   rolling down an incline
% 
%   Example of a System of equations used to solve a problem in MATLAB
%   Test Values
% m= 8kg
% theta= 30 deg
% R = 0.3
% meu_s = 0.15
% meu_k = 0.1

clear all
close all
disp('Please enter the required values needed for these calculations:');
m=input('Value of Mass in kg: ');
theta=input('Value of Angle in Degrees: ');
R=input('Value of Radius: ');
meu_s=input('Value of Static Friction: ');
meu_k=input('Value of Kinetic Friction: ');
W=m*9.81; %weight

%No Slipping

sys_a=[1 0 0 m;0 1 0 0;R 0 -(1/2)*m*R^2 0;0 0 R -1];

sys_b=[sind(theta)*W;cosd(theta)*W;0;0];

X=(sys_a)\(sys_b);
F=X(1);
N=X(2);
alpha=X(3);
a=X(4);

disp('No Slipping')
fprintf('F=%4.2f, N=%4.2f, alpha=%4.2f, a=%4.2f\n', F, N, alpha, a)

%Slipping

sys_a=[1 0 0 m; 0 1 0 0; R 0 -.5*m*R^2 0; 1 -meu_k 0 0];
sys_b=[sind(theta)*W; cosd(theta)*W; 0; 0];
X=(sys_a)\(sys_b);
F=X(1);
N=X(2);
alpha=X(3);
a=X(4);

disp('Slipping')
fprintf('F=%4.2f, N=%4.2f, alpha=%4.2f, a=%4.2f\n', F, N, alpha, a)
end

