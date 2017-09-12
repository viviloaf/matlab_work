%another curvefit assignment

% y = ae^bx
% ln(y) = ln(a e ^bx)
% ln(Y) = ln(a) + bx = a + bx
% linear curve fit
% ln(y) = a_1 + bx ~ y = a_1 + bx
%assume same data

%load dataset_9-28-15.mat;
x=-3:1:3;
y=[401.7107, 147.7811, 54.3656, 20.000, 7.3576, 2.7067, 0.009957];

y1=log(y);
a_exp=polyfit(x, y1, 1); 
y_fit_log=polyval(a_exp, x);
y_fit=exp(y_fit_log);
figure(1);

%plot(x, y, 'o', x, fit_y);
plot(x, y, 'r*', x, y_fit)
xlabel('X')
ylabel('Y and the fitted curve')
fprintf('The data is fitted with y=%5.2exp(%5.2fx)\n,\', a_exp);

figure(2)
semilogy(x, y, 'r*', x, y_fit_log)
xlabel('X')
ylabel('Y and the fitted line- in log scale')

% 5.2, 5 = assign 5 spaces, 2 = 2 signifcant figures