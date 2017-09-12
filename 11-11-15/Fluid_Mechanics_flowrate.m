function [ v_bulk ] = Fluid_Mechanics_flowrate()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%test values
%e= 45.72nm, roughness of pipe
%D=6 cm, diameter of pipe
%l=30m, length of pipe
%meu = 1.002x10^-3 , dynamic viscosity
%v = 1.004x1-^-6 , kinematic viscosity
%v_bulk - .1 m/s
%row = meu/v kg/m^3= density of liquid (water) (is about 1)
%P_i = pressure (m)
%Q_i=.0001 m^3 /s
%f = friction factor
%g = 9.81
[Y,y]=deal(1);
[N,n]=deal(0);
user_input=input('Do you want to use predefined test values? Enter Y/N: ');
if user_input==1
    e=4.572e-8
    D=6
    l=30
    meu=1.002e-3
    v=1.004e-6
%     v_bulk=.1
    row=meu/v
    P_i=20
    Q_i=.00001
else
disp(' ');disp('Input values for function when prompted. If a value is not used, do not enter a value');disp(' ');

% %==========================================================================
% n=input('Pipe Roughness(nm): '); %elpison
% if isempty(n)
%     disp('Please Enter a value for n');
%     pause (5)
%     [ Re, h_l ] = Fluid_Mechanics_flowrate
% while (n<=0)
%     disp('Pipe roughness cannot be a zero or a negative value');
%     pause(5)
%     [ Re, h_l ] = Fluid_Mechanics_flowrate
% end
% e=n/1000000000; %convert to m
% end
% %==========================================================================
% D=input('Diameter of pipe(m): ');
% if isempty(D)
%     disp('Please Enter a value for D');
%     pause (5)
%     [ Re, h_l ] = Fluid_Mechanics_flowrate
% while (D<=0)
%     disp('Diameter cannot be a zero or a negative value');
%     pause(5)
% %     [ Re, h_l ] = Fluid_Mechanics_flowrate
% end
% end
% %==========================================================================
% l=input('length of pipe(m): ');
% if isempty(l)
%     disp('Please Enter a value for l');
%     pause (5)
%     [ Re, h_l ] = Fluid_Mechanics_flowrate
% while (l<=0)
%     disp('Pipe length cannot be a zero or a negative value');
%     pause(5)
% %     [ Re, h_l ] = Fluid_Mechanics_flowrate
% end
% end
% %==========================================================================
% meu=input('Dynamic Viscosity of liquid (Pa * s): ');
% if isempty(meu)
%     disp('Please Enter a value for meu');
%     pause (5)
%     [ Re, h_l ] = Fluid_Mechanics_flowrate
% while (v<=0)
%     disp('Dyanimic viscosity cannot be a zero or a negative value');
%     pause(5)
% %     [ Re, h_l ] = Fluid_Mechanics_flowrate
% end
% end
% %==========================================================================
% v=input('Kinematic Viscosity of liquid (m^2/s): ');
% if isempty(v)
%     disp('Please Enter a value for v');
%     pause (5)
%     [ Re, h_l ] = Fluid_Mechanics_flowrate
% while (v<=0)
%     disp('Kinematic viscosity cannot be a zero or a negative value');
%     pause(5)
% %     [ Re, h_l ] = Fluid_Mechanics_flowrate
% end
% %==========================================================================
% v_bulk=input('Bulk velocity of liquid *m/s): ');
% %==========================================================================
% n
% D
% l
% meu
% v
% v_bulk
% user_input=input('Do you want to use these values? Enter Y/N');
% if user_input==0
%     [ Re, h_l ] = Fluid_Mechanics_flowrate
% end
% %==========================================================================    
end
g=9.81
% Re=(v_bulk)*(D)/(v);
% 
% if Re<2000
%     disp('Flow is laminar');
%     f=64/Re
% %     h_l=(((v_bulk)^2)/(2*g))*(f*(l/D))
%     
% %     fprintf('Friction force:');
% %     fprintf('Headloss: ');
% elseif Re>4000
%     disp('Flow is turbulent');
%     f=(1/(-1.81)*(1.11)*log10((6.9/Re)*(e/D)/(3.7)))^1/2;
% %     h_l=(((v_bulk)^2)/(2*g))*(f*(l/D));
%     
% %     fprintf(['Friction force: ',num2str(f)]);disp(' ');
% %     fprintf(['Headloss: ',num2str(h_l)]);disp(' ');
% else
%     disp('Flow is transient');
% end

P_i=20
h_l=(P_i/(row*g))
a_circle=pi*r^2

error_h_l=abs(h_l-(P_i/row*g))/(P_i/row*g);

if error_h_l<10^-3
    

end




