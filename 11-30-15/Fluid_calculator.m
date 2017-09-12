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
% Function Inputs
g=9.81;
delta_Q=10e-6;

%==========================================================================    
% %Conversion to E matrix
% [D_g, E_g]=meshgrid(D, e);
%==========================================================================    
% Error Loop
tic
disp('Velocity is being calculated...');
for i=1:length(D)
    for j=1:length(e);
            %Changing values
            r=D(i)/2;
            a=pi*(r.^2);
            v_bulk=Q_i/a;
            %Re loop
            Re=(v_bulk)*D(i)/(v);
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
                    f=64/Re;
                case {'Transient','Turbulent'}
                  %disp('Flow is turbulent');
                  f=(1/(-1.81*log10((6.9/Re)+((e(j)/D(i))/3.7)^1.11)))^2; 
            end
            h_l=(((v_bulk)^2)/(2*g))*(f*(l/D(i)));
            h_i=p_i_conv/rho*g;
            error_h_l=abs(h_l-(h_i)/(h_l));
            
            while error_h_l>10e-4;
                Q_i=Q_i+delta_Q;
                v_bulk=Q_i/a;
                Re=(v_bulk)*D(i)/(v);

               %Recaculation of friction
                Re=(v_bulk)*D(i)/(v);
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
                        f=64/Re;
                    case {'Transient','Turbulent'}
                      %disp('Flow is turbulent');
                      f=(1/(-1.81*log10((6.9/Re)+((e(j)/D(i))/3.7)^1.11)))^2;  
                end
                h_l=(((v_bulk)^2)/(2*g))*(f*(l/D(i)))
                h_i=p_i_conv/rho*g;
                error_h_l=abs((h_l-(h_i))/(h_l))
            end
    end
end
toc
%==========================================================================    
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