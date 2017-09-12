function [ HB ] = brinellbook( HB_input )
%Brinell Class data set test
%   Uses input from a datasheet such as excel to run the function multiple
%   times
L=HB_input(:,1); % = all rows, column 1
D=HB_input(:,2); % = all rows, column 2
d=HB_input(:,3); % = all rows, column 3
%%
a=((pi.*D)./2);
b=(D-(sqrt((D.^2)-(d.^2))));
c=L./(a.*b);
HB=c;
%disp(['HB=', num2str(c)])
%num2str = number to string representation command

end

