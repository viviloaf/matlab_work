x=[0:0.5:5];
y=polyval([2 -5 1], x);

exp_y=y+2.*rand(1,11).*[0 1 -1 1 -1 1 -1 1 -1 1 0];
a1=polyfit(x,exp_y,1);

figure;

fit_y=polyval(a1,x);
plot(x,exp_y,'O',x,fit_y);