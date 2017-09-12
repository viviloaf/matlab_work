function [ HB ] = brinell( L, D, d )
%Brinell Hardness Calculator
%   MATLAb function to find HB
%   L=load, kgf
%   D=diameter of indentor, mm
%   d=diametrer of indentation, mm
%HB = L/({piD/2}{D-sqrt((D^2-d^2)}}
%reply = input('Use Predefined values: \nL=3000, D=10, d=7.2. \n[test]. \nPress [Enter] to skip','s');
%if isempty(reply)
%    reply = 'test';
%    L=3000;
%    D=10;
%    d=7.2;
%if isempty(reply)
%    reply = 
a=((pi*D)/2);
b=(D-(sqrt((D.^2)-(d.^2))));
c=L/(a*b);
%HB=c;
disp(['HB=', num2str(c)])
%num2str = number to string representation command
end

