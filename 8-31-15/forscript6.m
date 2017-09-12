%while loop, usage
%while [condition]
    %[command]
%end
a=[2]
while a<11
    if a==5
        a=a+2
    end
    a=a+1
end
%the script will loop until the initial condition of a<11 is fufilled.
%until that point, it will loop and run. given the special condition when
%a==5, it will add 2, instead of 1, but the new value is 7, and 7=/=5, so
%it goes to the next command
