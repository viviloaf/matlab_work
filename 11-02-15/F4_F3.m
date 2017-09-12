function [ F3 ] = F4_F3( F4 )
F3=zeros(size(F4,1),3);

for j=1:size(F4,1)
    for i=2:4
    F3(j,i-1)=F4(j,1)*cosd(F4(j,i));

    end
end