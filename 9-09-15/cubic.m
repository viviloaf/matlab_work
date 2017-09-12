function [ root ] = cubic( a, b, c, d )
%Polynominal Root Solver
%   It can accept polynominals to the 3rd degree
%   ax
%   ax^2+b
%   ax^2+bx+c
%   ax^3+bx^2+cx+d
%   a cannot equal 0
%   when the cubic function is set to 0, the cubic function has 3 real roots
%   Test Values Quadradic: a=2, b = -7, c= 3. Roots should be: [3, .5]
%   Test Values Cubic: a=2, b=-4, c=-22, d=24. Roots should be: ~[-4,3-1]
if a==0;
    'a cannot equal 0, there are no roots for the inputted function'
    'example: 0(x)^2 = 0'
elseif nargin==1
    'This formula does not have any roots'
elseif nargin==2
    r1=-(b/a);
    root=[r1];
    %2 inputs, c=0
    % ax^2+bx+0=0
    % let c=0, the quadric formula (-b(+, -)sqrt((b.^2)-(4*a*c))/(2*a),
    % simplifies to (-2b/(2*a)) = (-b/a)
elseif nargin==3
    %This portion computes the 2 roots of a quadratic equation
    x1=(-b+sqrt((b.^2)-(4*a*c)))/(2*a);
    x2=(-b-sqrt((b.^2)-(4*a*c)))/(2*a);
    root=[x1, x2];
else
    %this portion computes the 3 roots of the cubic equation
    %the forumla was derived from the piblically accessable wikipedia on
    %cubic roots found here:
    %https://en.wikipedia.org/wiki/Cubic_function
    % under "Roots of a Cubic Function"
    %
    %Q1 is the substitution of Delta2, Q2 is the substitution of of
    %Delta(2,1)-4Delta(3,0)
    %
    %C1 is given by the choice of the cube root
    %U1, U2, U3, are the substitution of the coefficeents of the root
    %D1 is the substitution of Delta0
    %
    %r1, r2, r3 are given by the general formula for finding the cubic
    %roots.
    %
    %I chose to use more subtitution than what was provided in class
    %because I wanted control over every variable as well as an easy way to
    %review and look when running the code. it is easier to deal with
    %multiple lines of code rather than one giant block of code where I
    %would have to search for the error, as I found out the first time.
    %
    %The first time, I had tried to put the entire root forumla into one
    %line, making it extremely hard to review as well as looking completely
    %messy.
    %
    %
    discriminant=((18*a*b*c*d)-(4*b.^3*d)+(b.^2*c.^2)-(4*a*c.^3)-(27*a.^2*d.^2));
    Q1=(2*b.^3)-(9*a*b*c)+((27*a.^2*d));
    Q2=(((-27*a.^2*(discriminant)).^(1/2)));
    C1=((((Q1)+(Q2))/2).^(1/3));
    U1=1;
    U2=((-1+1i*sqrt(3))/2);
    U3=((-1-1i*sqrt(3))/2);
    D1=(b.^2-(3*a*c));
    r1=(-(1/(3*a)))*((b)+((U1)*(C1))+((D1)/((U1)*(C1))));
    r2=(-(1/(3*a)))*((b)+((U2)*(C1))+((D1)/((U2)*(C1))));
    r3=(-(1/(3*a)))*((b)+((U3)*(C1))+((D1)/((U3)*(C1))));
    root=[r1, r2, r3];
end