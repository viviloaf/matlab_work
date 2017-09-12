function [  ] = Vector_Resultant(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
clc
format compact


method=input('Which format (1)component or (2)magnitude & angle?');
%--------------------------COMPONENT METHOD--------------------------
    if (method==1);
        clc
    fprintf('Enter the Matrix in this manner [Fx1 Fx2; Fy1 Fy2; Fz1 Fz2\n')
        vec_matrix=input('Enter forces in matrix\n');   
        num_vec=length(vec_matrix);
        Resultant_comp=sum(vec_matrix,2);
        
        FR_Mag=sqrt((Resultant_comp(1))^2+(Resultant_comp(2))^2+(Resultant_comp(3))^2)
        unit_vec=Resultant_comp*1/FR_Mag
        alpha=acosd(Resultant_comp(1)/FR_Mag)
        beta=acosd(Resultant_comp(2)/FR_Mag)
        gamma=acosd(Resultant_comp(3)/FR_Mag)
        
        for i=1:num_vec;
            arrow=quiver3(0,0,0, vec_matrix(1,i), vec_matrix(2,i), vec_matrix(3,i));
            hold on
        end
            arrow=quiver3(0,0,0, Resultant_comp(1), Resultant_comp(2), Resultant_comp(3));
            hold off
%---------------------------ANGLE METHOD----------------------------
    else
        clc
       fprintf('Enter the Matrix in this manner [F1 F2; alpha1 alpha2; beta1 beta2; gamma1 gamma2\n')
       Fvec_matrix=input('Enter forces in matrix\n');
       convert_mat=repmat(Fvec_matrix(1,:),1,1); %reference first matrix, and then apply to the next matrix
       convert_mat2=cosd(repmat(Fvec_matrix(2:end,:),1,1))'; %copies an entire matrix and creates a new one, (1,2) = 1st row twice (2,2) would create a 2x2 matrix
       num_ang_vec=size(Fvec_matrix,2);
            for k=1:num_ang_vec
                 F(k,:)=convert_mat(1,k).*convert_mat2(k,:);       
            end
       F_sum=sum(F,1);
       fprintf('\n[FRx FRy FRz]\n')
       FR=F_sum
       fprintf('\n')
       FR_Mag=sqrt(FR(1)^2+FR(2)^2+FR(3)^2)
       fprintf('\n[i j k]\n')
       unit_vec=FR/FR_Mag
       fprintf('\nDegrees of the Resultant Vector\n')
            alpha=acosd(FR(1)/FR_Mag)
            beta=acosd(FR(2)/FR_Mag)
            gamma=acosd(FR(3)/FR_Mag)
       num_vec_comp=size(F,1);
            for j=1:num_vec_comp;
           hold on
        arrow=quiver3(0,0,0, F(j,1), F(j,2), F(j,3));
            end
        arrow=quiver3(0,0,0, FR(1,1), FR(1,2), FR(1,3));
  view(-50,30)
   daspect([5 5 1])
    assignin('base', 'FR',FR);
    grid on
       hold off
            
    end
end
