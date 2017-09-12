function [ output_args ] = Untitled2( input_args )
%UNTITLED2 Summary of this function goes here
%   Rewrite 2
%Group Project Due: Dec 7 2015
%   Vinh Nguyen
%test values
%e= 45.72nm, roughness of pipe
%D=6 cm, diameter of pipe
%l=30m, length of pipe
%meu = 1.002x10^-3 , dynamic viscosity
%v = 1.004x1-^-6 , kinematic viscosity
%v_bulk - .1 m/s
%rho = meu/v kg/m^3= density of liquid (water) (is about 1)
%P_i = 200 pressure (KPa) convert to pa
%delta_p=
%Q_i=.0001 m^3 /s
%f = friction factor
%g = 9.81

%outputs
%h_l = headloss
%P_i = display reference headloss
%v_bulk = velocity
clc
close all
clear all
%==========================================================================   
%User Input Section
[Y,y]=deal(1);
[N,n]=deal(0);
user_input=input('Do you want to use predefined test values? Enter Y/N: ');
if user_input==1
    e=1e-9:1e-9:50e-9;
    D=.005:.001:.06;
    l=30;
    meu=1.002e-3;
    v=1.004e-6;
    rho=meu/v;
    Q_i=10e-6;
    p_i=200;
    p_i_conv=p_i*1000;
else
    %*inputs*
end
%==========================================================================   
% Basic Function Inputs
g=9.81; %gravity
r=D/2; %radius defined from diameter
a=pi*(r.^2); %area of cross section of pipe
v_bulk=Q_i./a; %velocity of the flowrate of water in the pipe
delta_Q=10e-6; %the value that will change with each iteration
%========================================================================== 
%Conversion to E matrix
[D-g, E_g]=meshgrid(D, e);
%========================================================================== 
%Re Loop
% Initial loop to define the Reynolds value before multiple itertations
    Re=(v_bulk).*(D)/(v);
    if Re<=2000;
        Regime='Laminar';
    elseif Re>2000 & Re<4000;
        Regime='Transient';
    else Re>4000; %bewteen 2000-4000 is both, normally flow is turbelent when Re==4000
        Regime='Turbulent';
    end
    
    switch Regime;
        case 'Laminar'
            %disp('Flow is laminar');
            f=64./Re;
        case {'Transient','Turbulent'}
          %disp('Flow is turbulent');
          f=(1/(-1.81)*(1.11)*log10((6.9./Re)*(e./D)/(3.7)))^1/2;  
    end
    h_l=(((v_bulk).^2)./(2.*g)).*(f.*(l./D))
    h_i=p_i/rho*g
    error_h_l=abs(h_l-(h_i)./(h_l))
end

