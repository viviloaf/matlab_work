function [ output1, outdim ] = quada1( a, b, c )
%Aug 24, 2015
%   Combined function outputting in matricies
%   a^2 + b^2 + c^3, a+b
[output1]=[a^2+b^2+c^3, a+b];
outdim=size(output1);

xx=a^2+b^2+4*c^3;
end

