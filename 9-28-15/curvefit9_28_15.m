%Write a script that loads the data into a .dat file, 
%curve fit(polyfit x,y, n) (n = quadric, cubic, etc), and plugs orignal data against the best
%curve line
load dataset_9-28-15.mat;
a1=polyfit(X, Y, 1); fit_y=polyval(a1, X);
fprintf('The Data were fitted with y=%.2fx+%.2f\n', a1);
% %.2fx3+%.2fx1+%.2f\n, a
figure;
plot(X, Y, 'o', X, fit_y);
xlabel('x'); ylabel('y');