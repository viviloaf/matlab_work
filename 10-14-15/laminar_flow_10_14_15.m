function  [Q_A, V_avg]=laminar_flow_10_14_15
%UNTITLED2 Summary of this function goes here
%   r_o = 
%   n =
%   V_max = 
% 2*pi*V_max*r*((1-(r/r_o))^(1/n)))

%   Test Values
%   V_max= .3 m/s
%   r_o = .2m
%   n= 2
clc
clear all
close all
disp(['This function calculates the flow rate and average velocity of fluid in a pipe'])

V_max=input('Enter the maxinium velocity in the pipe of the fluid in (m/s): ')
r_o=input('Specify the radius of the pipe in (m): ')
n=input('Specify the constant n: ')

% r=sym('r')
Q_A=integral(@(r) 2*pi*V_max*r.*((1-(r/r_o)).^(1/n)),0, r_o);
A=pi*r_o.^2;
V_avg=(Q_A./A);

% Q_A;
% V_avg;

disp(['The volumetric flow rate is ', num2str(Q_A),' m^3/s']);
disp(['The average velocity is ', num2str(V_avg),' m/2']);
end
