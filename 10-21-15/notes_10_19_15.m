%   Solving the system of linear equations
%   ex: f(x) = 2x^2 + x - 5 = 0 : one independent variable
%   When you have 2 variables to solve you. When you need mroe than one
%   equation

%   {x-y = 0
%   {2x+y= 6

disp(['Ex1: Gaussian Elimination']);

% y_1=x+y+2=1
% y_2=2x+3y+42=2
% y_3=x+2y-2=1
% 
% becomes
% y_1=x+y=1
% y_2=-x+y=22
% y_3=0x+y-22=0
% 
% becomes
% y_1=x+y+2=1
% y_2=0x+y+22=0
% y_3=0x+0y-42=0

%   Keep the first equation
%   Elimiate one unknown variable from the 2nd equation

A=[1 1 1;2 3 47;1 2 -1];
B=[1;2;1];
x1=inv(A)*B;
x2=A^-1*B;
x3=A\B;

rank_A=rank(A);
aug_mat=horzcat(A,B);
R_R_E_F=rref(aug_mat);

disp('Inverse: '); disp(x1)
disp('Alternative Inv Method: '); disp(x2)
disp('Left Division Method: '); disp(x3)
disp('Alternative Method')
disp('Matrix A: '); disp(A); disp('Matrix B: '); disp(B);
disp('Row Reduced Echleon Form: '); disp(R_R_E_F);

%-------------------------------------------------------------------------
close all
clear all

A=[3 2 -1; -1 3 2; 1 -1 -1];
B=[10;5;-1];

X=A\B

%-------------------------------------------------------------------------
disp('Angular Acceleration of the Disk');

%   F_x=m*a_x = m*gcos(theta) - F = ,a_x
%   F_y=m*a_y = mgsin(theta) + N = m*A_y (A_y = 0)
%   N = I*ang_accel = F*R
%   F = meu_k

%   Variables
%   A_x, F, N, ang_accel

%  `ang_accel (alpha) = Radius / acceleration
%   F = meu_k * N 

%2 conditions: disk rolling without slipping;  the disk slips

-F+0*N+0*alpha-mg=-m*g*cos(theta) %net force equations in x
0F+1*N+0*alpha+0*a_x=m*g*sin(theta) %net force equation in y
R*F+0n-i*A+0*A_X=0
0+0*N-R*a+1*a_x

X =[F; N; alpha; a];

m= 8kg
theta= 30 deg
R = 0.3
meu_s = 0.15
meu_k = 0.1

X=[-1 0 0 -1;0 1 0 0; 1 0 -1 0; 0 0 -1 1];

% This assignment due next monday
%moment of intritia
%solve the system of equations
%Write a function that has outputs of the solution A_x, F, N, alpha

%format the inputs as a prompt
%m = input('Please enter the value of N: ')
%theta = inpu('Please enter the value of theta: ')