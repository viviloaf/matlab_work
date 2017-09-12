function [  ] = Fluid_calculator( input_args )
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
clear all
close all
%==========================================================================    
% User Inputs

[Y,y]=deal(1);
[N,n]=deal(0);
user_input=input('Do you want to use predefined test values? Enter Y/N: ');
if user_input==1
    e=1:4:50;
    D=0.5:0.2:6;
    l=30;
    meu=1.002e-3;
    v=1.004e-6;
%     v_bulk=.1
    rho=meu/v;
%     h_i=20;
    Q_i=10e-8;
    p_i=200;
    p_i_conv=p_i/1000;
else
    %*inputs*
end
%==========================================================================    
% Function Inputs
g=9.81;
r=D/2;
% h_i=20;
a=pi*(r.^2);
v_bulk=Q_i./a;
delta_Q=10e-8;

%==========================================================================    
%Re Loop
    Re=(v_bulk).*(D)/(v);
    if Re<=2000;
        Regime='Laminar';
    elseif Re>2000 && Re<4000;
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
          f=(1/(-1.81)*(1.11)*log10((6.9/Re)*(e/D)/(3.7)))^1/2;  
    end
    h_l=(((v_bulk).^2)./(2.*g)).*(f.*(l./D));
    h_i=p_i/rho*g;
    error_h_l=abs(h_l-(h_i)./(h_l));

%==========================================================================    
% Error Loop
tic
disp('Velocity is being calculated...');
% for D=(0.5:0.1:6)*1e-2;
%     for e=1:1:50;
[D_g,e_g]=meshgrid(D,e)
z_g=D_g+2*e_g

for i=1:length(D)
    for j=1:length(e);
while error_h_l>10e-4;
    Q_i=Q_i+delta_Q;
    v_bulk=Q_i./a;
    Re=(v_bulk).*(D)/(v);
    
   %Recaculation of friction
    Re=(v_bulk).*(D)/(v);
    if Re<=2000;
        Regime='Laminar';
    elseif Re>2000 %& Re<4000;
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
%           mat_6=ones(1,length(Re));
%           mat_6=mat_6*(6.9);
          f=(1/(-1.81)*(1.11)*log10((6.9/Re)*(e/D)/(3.7)))^1/2;  
    end
    h_l=(((v_bulk).^2)./(2.*g)).*(f.*(l./D));
    h_i=p_i/rho*g;
    error_h_l=abs(h_l-(h_i)./(h_l));
end
    end
end

toc

% %Function Output
disp(' ');
  if Re<2000
        Regime='Laminar';
        disp('Flow is laminar');
        p_i
        v_bulk
        h_l
        time_elapse=toc
    elseif Re>2000
        Regime='Turbulent';
        disp('Flow is turbulent');
        p_i
        v_bulk
        h_l
        time_elapse=toc
  end
%Plot Function
% D=0.5:0.1:6;
% e=5:e:50
% [D_g,e_g]=meshgrid(D,e)
% z_g=D_g+2*e_g
end
%correct values
%
%