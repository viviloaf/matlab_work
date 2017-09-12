function [ output_args ] = Untitled( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
clear all
close all
method=input('Component Forces: (1) or Magnitude and Angle: (2)? Input: ');

%-------------------------------------------------------------------------
%Method 1: Component Forces
%Test Values:
%mat_force=[1 2.5 3; 4 5.5 6; 7 9 8]
%mat_other=[1 2.5 3; 4 5.5 6; 7 9 8]
if method==1
disp('Example input: [1 2 3; 4 5 6; 7 8 9]');disp(' ');
mat_force=input('Enter the Forces of 3 Vectors in a matrix: ');
mat_force_result=sum(mat_force,2);
n=length(mat_force);
R=zeros(1,3);
for i=1:n
    R=R+mat_force(i,:); %R is recursive
end
magnitude_R=sqrt(R(1)^2+R(2)^2+R(3)^2)
unit_vector=R/magnitude_R
alpha=acosd(R(1)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
beta=acosd(R(2)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
gamma=acosd(R(3)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
figure
for i=1:n;
    arrow_plot=quiver3(0, 0, 0, mat_force(1,i), mat_force(2,i), mat_force(3,i));
    hold on
end
    arrow_plot=quiver3(0, 0, 0, mat_force_result(1),mat_force_result(2),mat_force_result(3));
    hold off
%--------------------------------------------------------------------------
%Method 2: Magnitude and Angle
else
    disp('Example: [20 30 60 90; 40 45 45 90] ');
mat_force_angle=input('Enter Magnitude, 3 Angle Measurments: ');
mat_force=zeros(size(mat_force_angle,1),3);
for j=1:size(mat_force_angle,1)
    for i=2:4
    mat_force(j,i-1)=mat_force_angle(j,1)*cosd(mat_force_angle(j,i));
    end
R=zeros(1,3);
for i=1:j
    R=R+mat_force(j,:); %R is recursive
end
magnitude_R=sqrt(R(1)^2+R(2)^2+R(3)^2)
unit_vector=R/magnitude_R
alpha=acosd(R(1)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
beta=acosd(R(2)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
gamma=acosd(R(3)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
figure
for i=1:j;
    arrow_plot=quiver3(0, 0, 0, mat_force_angle(1,i), mat_force_angle(2,i), mat_force_angle(3,i));
    hold on
end
    arrow_plot=quiver3(0, 0, 0, mat_force_result(1),mat_force_result(2),mat_force_result(3));
    hold off
end
end

%=========================================================================
% Old Code
% disp('Example: [20 30 60 90; 40 45 45 90] ');
% mat_force=input('Enter Magnitude, 3 Angle Measurments: ');
% convert_mat1=repmat(mat_force(1,:),1,1);
% convert_mat2=cosd(repmat(mat_force(2:end),1,1));
% n=length(1:mat_force);
%     for i=1:n
%     F(i,:)=convert_mat1(1,i).*convert_mat2(i,:);
%     end
% R=zeros(1,3);
%     for i=1:n
%     R=R+mat_force(i,:); %R is recursive
%     end
% F_sum=sum(F,1);
% magnitude_R=sqrt(R(1)^2+R(2)^2+R(3)^2)
% unit_vector=R/magnitude_R
% alpha=acosd(R(1)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
% beta=acosd(R(2)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
% gamma=acosd(R(3)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
% figure
% for i=1:n;
%     arrow_plot=quiver3(0, 0, 0, F(1,i), F(2,i), F(3,i));
%     hold on
% end
%     arrow_plot=quiver3(0, 0, 0, F_sum(1),F_sum(2),F_sum(3));
%     hold off
% end

% convert_mat=repmat(mat_force(1,:),1,1);
% convert_mat2=cosd(repmat(mat_force(2:end,:),1,1))';
% num_forces=size(mat_force,2);
% %Forces_mat_converted=repmat(Forces_mat(:,1), [1, 3]).*cosd(Forces_mat(:,2:end));
%  for i=1:size(mat_force, 1)
%      mat_force_conv(i,:)=convert_mat(i,1).*cosd(convert_mat2(i,2:end));
%  end
% % num_forces2=cosd(repmat(mat_force(2:end,:),1,1))';
% % angle
% R_vec=sum(mat_force_conv,1);
% magnitude_R=sqrt(R_vec(1)^2+R_vec(2)^2+R_vec(3)^2)
% % R=sqrt(R_vec.^2)
% u=R_vec./magnitude_R
% % angles=acosd(R_vec(1)/magnitude_R)
% alpha=acosd(R_vec(1)/magnitude_R)
% beta=acosd(R_vec(2)/magnitude_R)
% gamma=acosd(R_vec(3)/magnitude_R)
% 
% n=num_mat_forces;
% figure
% for i=1:n;
%     arrow_plot=quiver3(0, 0, 0, mat_force(1,i), mat_force(2,i), mat_force(3,i));
%     hold on
% end
%     arrow_plot=quiver3(0, 0, 0, mat_force_result(1),mat_force_result(2),mat_force_result(3));
%     hold off
% end    
% 
% end
% %Input: Force and angles alpha, beta, gamma of the input forces
% %Output: |vector_R| (magnitude)
% %        unit vector 
% %        Output Angles that make vecdtor_R makes with x, y, z
% 
% % mat_force=input('Enter the Force: ');
% % disp('Example input: [1 2 3; 4 5 6; 7 8 9]');disp(' ');
%  
% %convert to form matrix a
% %test values
% %F_1=20
% %F_2=40
% %alpha = 30, 45
% %beta = 60, 45
% %gamma =90, 90
% %enter forces alpha beta gamma
% 
% 
% 
% % magnitude_R=sqrt(R(1)^2+R(2)^2+R(3)^2)
% unit_vector=R/magnitude_R
% alpha=acosd(R(1)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
% beta=acosd(R(2)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))
% gamma=acosd(R(3)/(sqrt(R(1)^2+R(2)^2+R(3)^2)))

%due next monday: nov 1 2015

