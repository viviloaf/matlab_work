disp('notes 10 28 2015');

disp('Impact');
%Central, Oblique, 

%Central Impact; Occurs when the direction of motion of the objects is
%along the lines passing through the mass centers of the objects.
%test values


[Y, y]=deal(1);
[N, n]=deal(0);
disp(' ');disp('Calculate the velocity of the chest just after the impact with the sack');disp(' ');
disp(' ');disp('Calculate the velocity of the sack before and after the impact with the chest');disp(' ');

variable_user=input('Do you want to run the function with predefined test values? Enter Y/N: ');
if variable_user==1
    m_a=3
    m_b=5
    theta=45
    l=3
    e_r=0.3
else
m_a=input('Mass of Chest (kg): ');
m_b=input('Mass of Sack (kg): ');
l=input('Length of rope from point of axis to the sack (m): ');
theta=input('Angle Between Sack and Chest in degrees: ');
e_r=input('Coefficent of restitutition: ');
variable_length=input('Is the rope equal to the length bewteen the axis and the center of the chest? Enter Y/N: ');

if variable_length==1
    disp('Central Impact Method');
else 
    disp('Oblique Impact method');
    input('Distance between chest and the center axis: ');
end
    end
g=9.81;
A=[1 0 0;m_a -m_b -m_a; e_r -1 1];
B=[sqrt(2*g*(l-l*cosd(theta))); 0; 0];
X=A\B;
X