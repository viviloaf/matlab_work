function [ F4 ] = F3_F4( F3 )
F4=zeros(1,4);

F4(1)=sqrt(F3(1)^2+F3(2)^2+F3(3)^2);
for i=2:4
    F4(i)=F4(i)+acosd(F3(i-1)/F4(1));
end

end

