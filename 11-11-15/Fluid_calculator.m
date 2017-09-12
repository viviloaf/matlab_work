function [  ] = Fluid_calculator( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
clc
clear all
%==========================================================================    
% User Inputs

[Y,y]=deal(1);
[N,n]=deal(0);
user_input=input('Do you want to use predefined test values? Enter Y/N: ');
if user_input==1
    e=4.572e-8;
    D=.06;
    l=30;
    meu=1.002e-3;
    v=1.004e-6;
%     v_bulk=.1
    row=meu/v;
    h_i=20;
    Q_i=10e-8;
else
    %*inputs*
end
%==========================================================================    
% Function Inputs
g=9.81;
r=D/2;
h_i=20;
a=pi*r^2;
v_bulk=Q_i/a;

%==========================================================================    
%Re Loop
    Re=(v_bulk)*(D)/(v)
    if Re<2000
    disp('Flow is laminar');
    f=64/Re
        elseif Re>4000
    disp('Flow is turbulent');
    f=(1/(-1.81)*(1.11)*log10((6.9/Re)*(e/D)/(3.7)))^1/2
        else
    disp('Flow is transient');
    end
    
h_l=(((v_bulk)^2)/(2*g))*(f*(l/D))
error_h_l=abs(h_l-(h_i))/(h_i);
%==========================================================================    
% Error Loop
while error_h_l>10^-3
    Q_i=Q_i+1e-5;
    v_bulk=Q_i/a;
    Re=(v_bulk)*(D)/(v);
    
   %friction
    if Re<2000
%     disp('Flow is laminar');
    f=64/Re;
        elseif Re>4000
%     disp('Flow is turbulent');
    f=(1/(-1.81)*(1.11)*log10((6.9/Re)*(e/D)/(3.7)))^1/2;
        else
%     disp('Flow is transient');
    end
    
    
%     for %friction loop
%     end
    
    h_l=(((v_bulk)^2)/(2*g))*(f*(l/D));
    error_h_l=abs(h_l-(h_i))/(h_i);
     if h_l == h_i
         break
     end
end
Q
v_bulk
h_l

