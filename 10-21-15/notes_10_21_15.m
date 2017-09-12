%   notes_10_21_15

%   practice problems
clear all
close all

disp('Practice Problems');disp(' ');disp('Example 1: Plots in 3D');disp(' ');
x=0:1:100;
y=0:1:100;
disp('z=(x.^3+y.^3)/100;');disp(' ');

[x_grid, y_grid]=meshgrid(x, y);
z=(x_grid.^3+y_grid.^3)/100;

figure
subplot(1, 3, 1);
surf(x, y, z);
title('X, Y, Z');

subplot(1, 3, 2)
surf(x_grid, y_grid, z);
title('X_g_r_i_d, Y_g_r_i_d, Z')

subplot(1, 3, 3);
surf(z);
title('Z');

disp(['Z vs X and Y, ','0 _<X_<100, ','0_<y_<100, ','Check Graph']);disp(' ');
% griefpoints for x and y, 3d graph
%surf or mesh to plot the 3d graph

%--------------------------------------------------------------------------
disp(['Example 2']);disp(' ');
clear all
disp('(sin(sqrt(x.^2+y.^2))/.sqrt(x.^2+y.^2)');disp(' ');
[x, y]=meshgrid(-8:0.5:8);
R=sqrt(x.^2+y.^2);
z=sin(R)./R;
figure
surf(x, y, z, 'FaceColor','interp',...
    'EdgeColor', 'non',...
    'FaceLight','phong');
daspect([5 5 1]);
axis tight
view(-50, 30);
camlight left
title('Mexician Hat Sine Plot');
%--------------------------------------------------------------------------
disp('Example 3');disp(' ');disp('Butterfly Polar Plot');
clear all

T=0:(pi/100):2*pi;
r=exp(sin(T))+sin((-pi+2*T)/24)-2*cos(4*T);

figure
polar(T,r);
title('Butterfly Polar Plot');disp(' ');
%--------------------------------------------------------------------------
disp('Example 4, Manipulation of Matrices');
clear all

A=[2 1;4 3]

transpose_A=transpose(A)
det_A=det(A)
inv_A=inv(A)
%--------------------------------------------------------------------------
disp('Example 5: Dot Product');
clear all
A=[1 4 0.5]
B=[2 1.6 7]

disp('Used built in command: dot(mat_A, mat_B)');
Dot_Product=dot(A,B)
disp('Used sum command: sum(A * B)');
Dot_Product_2=sum(A.*B)
%--------------------------------------------------------------------------
% disp('Example 6');
% clear all
% 
% A=[2 3 4 5 6 7 8]
% 
% i=1:7    
% if A(1,1)<=8
%      B=A+1
%     
% end
%--------------------------------------------------------------------------
disp('Example 8: Inputs and Outputs');disp(' ');
clear all
% disp('This script will define the days in a given month');disp(' ');
% disp(['Possible inputs are: '...
% 'January, '...
% 'February, '...
% 'March, '...
% 'April, '...
% 'May, '...
% 'June, '...
% 'July, '...
% 'August, '...
% 'September, '...
% 'October, '...
% 'November, '...
% 'December, ']);
% 
% January=31;
% February=28;
% March=31;
% April=30;
% May=31;
% June=30;
% July=31;
% August=31;
% September=30;
% October=31;
% November=30;
% December=31;
% 
% month_n=input('Input Name of Month: ');
% if month_n=
% disp(['The number of dates for' 
%==========================================================================
[Jan, January, March, Mar, May, July, Aug, August, Oct, October, Dec, December]=deal(31);
[April, June, Sept, September, Nov, November]=deal(30);
[Feb, Feburary]=deal(28);

month_n=input('Give me the abbereviation of the month: ');
% if month_n==1 || month_n==3 || month_n==5 || month_n==7 || ...
%     month_n==8 || month_n==10 || month_n==12
if month_n==31;
disp('the Number of days for this month is 31');disp(' ');
elseif month_n==30
    disp('The Number of Days for this month is 30');disp(' ');
else
    disp('The number of days for this month is 28');disp(' ');
end
%=========================================================================
disp('Homework Help');
%function [F, N, alpha, a]=DynamicHW
% % This function calculates the frictional force (F),
% % Normal force (N), angular acceleration (alpha),
% % and acceleration of a disk slipping or rolling on
% % an incline.
% 
% clc
% clear all
% 
% disp('Enter all values in SI units')
% m=input('Please enter the mass of the disk: ');
% R=input('Please enter the radius of the disk: ');
% theta=input('Please enter the angle of the slope in degrees: ');
% mu_k=input('Please enter the coefficient of kinetic friction: ');
% W=m*9.81;
% 
% % No slipping
% 
% A=[1 0 0 m; 0 1 0 0; R 0 -.5*m*R^2 0; 0 0 R -1];
% B=[sind(theta)*W; cosd(theta)*W; 0; 0];
% X=A\B;
% F=X(1);
% N=X(2);
% alpha=X(3);
% a=X(4);
% 
% disp('No Slipping')
% fprintf('F=%4.2f, N=%4.2f, alpha=%4.2f, a=%4.2f\n', F, N, alpha, a)
% 
% % Slipping
% 
% A=[1 0 0 m; 0 1 0 0; R 0 -.5*m*R^2 0; 1 -mu_k 0 0];
% B=[sind(theta)*W; cosd(theta)*W; 0; 0];
% X=A\B;
% F=X(1);
% N=X(2);
% alpha=X(3);
% a=X(4);
% 
% disp('Slipping')
% fprintf('F=%4.2f, N=%4.2f, alpha=%4.2f, a=%4.2f\n', F, N, alpha, a)
% end