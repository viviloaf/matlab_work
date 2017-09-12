function [ outputs ] = ff1( input )
%UNTITLED2 Summary of this function goes here
%   Like a script file, has variables defined inside the function
%   breakpoints
%   conditional breakpoints
a=10;
for i=1:100
    outputs=1+1
    a=a+1+2
    ff2(a, outputs)
end

'output the final a and outputs'

a
outputs