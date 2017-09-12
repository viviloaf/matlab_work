%Volumetirc Flud flow in the pipe

%   q=V*A
%   V=Velocity of flow
%   However, velocity changes
%   A=Cross Section of Pipe

%   fluid flow = V(r) * dA

%   dA = 2pi * dr * r : very small value
%   2pir = length, dr = thickness
%   q = V(r) * 2*pi*r*dr
%   Q= sumunation q_da=integral(from 0 to r_0)(V(r)*2*pi*r dr
%   Q_A = int( 0, r_0 ) ( 2*pi*V_max*r(1-(r/r_0)^(1/n) dr = V-avg(A)

%   fluid flow flux =

disp(['Write a code with inputs, r_0, n, V_max. Outputs Q_A, V_avg']);

%--------------------------------------------------------------------------

disp(['Example 2: Numerical integration']);

%Numerical using MATLAB command
%Analyitcal by hand + MATLAB
%exp(1) = e^x

ex1=integral(@(x) sin(x), 0, (pi/2))
ex2=integral(@(x) log(x), 1, 10)
ex3=integral(@(x) (x.^2-(1./x)), 3, 5)
ex4=integral(@(x) x+exp(1).^x, 0, 1)
clear all
x=sym('x');
ex5=int(sin(x),x, 0, (pi/2))
ex6=int(log(x),x, 1, 10)
ex7=int((x.^2-(1./x)),x, 3, 5)
ex8=int(x+exp(1).^x,x, 0, 1)
clear all

disp('---------------------------------------------------------------------')
disp(['Example 4: more integration']);

x=sym('x');
ex9=diff((exp(-x.^2))./(x.^2-3*x+(x).^(1/2)))
ex10=diff(cos(x.^2)+sin(x.^2)).^(-1)
ex11=diff(cos(x.^2)+(((x).^(1/2))*sin(x.^2)))

%   homework for next class
%   use different differentiation techniques
%   f(x) = cos ^2 (x)
%   delta(x) = .001
%   0 _< x _< pi
%   1 diff(f(x)) / delta(x)
%   2 central diff
%   3 forward diff
%   4 backward diff
%   plot all in one graph
%   eval(dd), recommended to be used