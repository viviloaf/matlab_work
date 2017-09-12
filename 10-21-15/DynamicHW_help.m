function [F, N, alpha, a]=DynamicHW
% This function calculates the frictional force (F),
% Normal force (N), angular acceleration (alpha),
% and acceleration of a disk slipping or rolling on
% an incline.

clc
clear all

disp('Enter all values in SI units')
m=input('Please enter the mass of the disk: ');
R=input('Please enter the radius of the disk: ');
theta=input('Please enter the angle of the slope in degrees: ');
mu_k=input('Please enter the coefficient of kinetic friction: ');
W=m*9.81;

% No slipping

A=[1 0 0 m; 0 1 0 0; R 0 -.5*m*R^2 0; 0 0 R -1];
B=[sind(theta)*W; cosd(theta)*W; 0; 0];
X=A\B;
F=X(1);
N=X(2);
alpha=X(3);
a=X(4);

disp('No Slipping')
fprintf('F=%4.2f, N=%4.2f, alpha=%4.2f, a=%4.2f\n', F, N, alpha, a)

% Slipping

A=[1 0 0 m; 0 1 0 0; R 0 -.5*m*R^2 0; 1 -mu_k 0 0];
B=[sind(theta)*W; cosd(theta)*W; 0; 0];
X=A\B;
F=X(1);
N=X(2);
alpha=X(3);
a=X(4);

disp('Slipping')
fprintf('F=%4.2f, N=%4.2f, alpha=%4.2f, a=%4.2f\n', F, N, alpha, a)
end