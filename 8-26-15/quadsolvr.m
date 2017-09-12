function [ root1 ] = quadsolvr( a, b, c )
%8-26-15
%   Quadratic root finder
%   Input is in format ax^2 + bx + c
%   Ex: quadsolvr (a, b, c)
if nargin==1
    'this formula does not have any roots'
    %nargin command: gives number of input commands to function
    %example, if there is only one input, then for this function, it will
    %display that there are no roots. however, if there are 2 
elseif nargin==2
    root1=-(b/a);
    %nargin command is looking for 2 inputs, if there are, it will preform
    %the calculation -b/a, to fidn the simple root
else
    %the function goes on with the last script, it does not need a nargin
    %function because it is the last set of instructions and if the user
    %inputs 3 values. it can be put in but it is not necessary to have a
    %nargin==3 command.
    x1=(-b+square(b.^2-4*a*c))/2*a;
    x2=(-b-square(b.^2-4*a*c))/2*a;
    root1=[x1, x2];
    %answer is outputted in a matrix form in [root 1, root 2]
end

