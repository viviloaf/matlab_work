%N=10l;
%i=1:N;
%n = number of iterations
%for i=0:N
%    a=(r.^i);
%    b=a+(r.^i);
%end
%a = [a b c d]
%sum(a) = a b c d
%%
n=10;
r=2;
N=n+1;

p_mat=(0:n);
r_mat=ones(1,N)*r;
%%
tic
summation1=sum(r_mat.^(p_mat))
speed1=toc
%%
tic
summation2=sum(r.^p_mat)
speed2=toc
%%
%disp(summation1)
%disp(summation2)
%%
%some function to calcukate the values
%r^0 + r^1 + r^2 + r^3

%sum(function goes here to add up)

%%
%assignment, why is the second one faster?
%the first one has instructions to generate a matrix of r() for n number of
%iterations. 
%The second one uses the value r once, and then multiplies it
%by the matrix [r_mat]. It generates one matrix instead of two producing a
%shorter computation time.
