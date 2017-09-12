
clc
close all
clear all

x=0:0.1:10;
y=sqrt(x);

format long

z_exact=(2/3)*(x(end)^1.5-x(1)^1.5)

z_trapz=trapz(x,y)
z_quad=quad('sqrt',x(1),x(end))
z_int=integral(@(x) sqrt(x),x(1),x(end))

% absolute errors
abs_trapz_err=abs(z_trapz-z_exact)
abs_quad_err=abs(z_quad-z_exact)
abs_int_err=abs(z_int-z_exact)

% relative errors
rel_trapz_err=abs(z_trapz-z_exact)/z_exact
rel_quad_err=abs(z_quad-z_exact)/z_exact
rel_int_err=abs(z_int-z_exact)/z_exact
