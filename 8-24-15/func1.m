function [ output1, output2, output3, output ] = func1( x, y, z )
%8-26-15, HW assignment MATLAB-Vinh Nguyen
%   3 inputs, 3 outputs
%   output1: x * y
%   output2: x + y + z
output1= size(x); output2= x*y; output3= x+y+z;
output=[output1, output2, output3];
end

