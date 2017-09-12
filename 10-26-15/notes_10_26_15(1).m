disp('notes_10_26_15');
% Cartesian Vectors
% Functions (Vecotrs) -> Resultant Vector
% 
% Ex:
% 
% F_1, F_2, F_3, F_n
% 
% =
% 
% R = F_1, F_2, F_3, F_n

%vector_u = vector_R / abs|vector_R|

% alpha: cos(alpha) is R_x/abs|R|
%        cos(beta)  is R_y/abs|R|
%        cos(gamma) is R_z/abs|R|

%--------------------------------------------------------------------------

disp('Example 1: Cartesian Vectors');disp(' ');
disp('The resultant vector is the sum of the vectors');disp(' ');
clear all
close all

%Input: number of input vectors, formal of the vectors
%Output: |vector_R| (magnitude)
%        unit vector 
%        Angles that make vecdtor_R makes with x, y, z

disp('Example input: [1 2 3; 4 5 6; 7 8 9], or [F_x; F_y; F_z] inputs');disp(' ');
%mat_force=input('Enter the Forces of 3 Vectors in a matrix: ');
mat_force=[1 2.5 3; 4 5.5 6; 7 9 8]
n=length(mat_force);
R=zeros(1,3);

for i=1:n
    sum_R=R+mat_force(i,:);
end
magnitude_R=sqrt(sum_R(1)^2+sum_R(2)^2+sum_R(3)^2)
unit_vector=sum_R/magnitude_R
alpha=acosd(sum_R(1)/(sqrt(sum_R(1)^2+sum_R(2)^2+sum_R(3)^2)))
beta=acosd(sum_R(2)/(sqrt(sum_R(1)^2+sum_R(2)^2+sum_R(3)^2)))
gamma=acosd(sum_R(3)/(sqrt(sum_R(1)^2+sum_R(2)^2+sum_R(3)^2)))

arrow_plot=quiver3(0, 0, 0, alpha, beta, gamma);