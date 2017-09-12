% cos(x^2) + sin(x^2)
% 3*sin(x/2)

clc
clear all
close all
format long

z1=integral(@(x) cos(x.^2) + sin(x.^2),-pi,pi)
z2=quad('cos(x.^2) + sin(x.^2)',-pi,pi)

error=abs(z1-z2)