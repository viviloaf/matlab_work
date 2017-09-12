function [c d e] = matrix(a, b)
%09-09-15, Looping Matrix Solver
%   Takes 2 vectors [a, b] with arbitrary diemsions, multiplies them
%
%   ex:(3x1 matrix) into a (3x3) matrix in the following form:
%   c=  [c11=a1*b1, c12=a1*b2, c13=a1*b3]
%       [c21=a2*b1, c22=a2*b2, c23=a3*b2]
%       [c31=a3*b1, c32=a3*b2, c33=a3*b3]

%if [insert command to execute test]
    %'Thia will execute the test matrix using matricies:'
    %'a=[1, 2, 3];'
    %'b=[3, .5, .6'
%a=[1, 2, 3];
%b=[3, .5, .6];
%nrows=3;
%ncols=3;
%c=ones(nrows,ncols);
%for i=1:3;
%    j=1:3;
%    c(i,j)=a(i)*b(j);
%end
%for j=1:3
%    c(1,j)=a(1)*b(j);
%    i=1:3
%    c(i,1)=a(i)*b(1);
%end
    %for i=1:3
    %c(1,1)=(a(1)*b(1));
    %c(1,2)=(a(1)*b(2));
    %c(1,3)=(a(1)*b(3));
%    else
c=zeros(length(a),length(b));
d=zeros(length(a),length(b));
e=zeros(length(a),length(b));
        for i=1:length(a);
            j=1:length(b);
            c(i,j)=a(i)*b(j);
            d(i,j)=a(i)./b(j);
            e(i,j)=(1./(min(a(i),b(j))));
        end    
%disp(c)
%disp(d)
%disp(e)
end

