clc
clear all
close all
format long

z1=integral(@(x) cos(x.^2)+sin(4.*x),0,pi)
z2=quad('cos(x.^2)+sin(4.*x)',0,pi)

error=abs(z1-z2)