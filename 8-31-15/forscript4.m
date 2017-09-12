b=[10 11 1 1.5 6]
%want to make a new matrix to add [1] to any value x<5
% output, bbb=[10 11 2 2.5 6]
for a_number=b %defines script to look at the matrix
    if(a_number<5) %gives condition for script to look for values that are <5
        b_number=a_number+1 %command if previous condition is fufilled
    else
        b_number=a_number %if above 5, then the script is told to leave the value the same
    end
end
%function needs inputs, scripts will run as is with the given values.
%eg: a script to generate a set of random numbers between 1:10, make a
%script, however if you want random values between 2 different numbers
%every time such as 2, 4, or 10, 500, then make a function