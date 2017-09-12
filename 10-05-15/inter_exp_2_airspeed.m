function [ Density ] = inter_exp_2_airspeed ( )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
clc
clear all
close all
T_data= [0 15 20 25];
Densityy_data= [1.293 1.225 1.204 1.184];
Airspeed_data= [331.30 340.28 343.22 346.13];

x_new=0:1:25;

x=T_data;
y1=Densityy_data;
y2=Airspeed_data;

y_new = interp1(x, y1, x_new, 'spline');
subplot(2, 1, 1);
plot(x, y1, 'o',x_new, y_new);
title('Density Data')

y_new = interp1(x, y2, x_new, 'spline');
subplot(2, 1, 2);
plot(x, y2, 'o',x_new, y_new);
title('Airspeed Data')
end

