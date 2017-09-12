clc
close all
clear all

y = [316.160000000000, 311.590000000000, 306.770000000000, 301.230000000000, 295.520000000000, 290.110000000000, 284.940000000000, 279.040000000000];
x = [2013, 2011, 2009, 2007, 2005, 2003, 2001, 1999];
x_new=1999:1:2013;

y_new=interp1(x, y, x_new, 'spline');
%subplot(2, 2, 1);
plot(x, y, 'o', x_new, y_new);
title('Population Growth Between 1999 - 2013 with Spline Approach')

disp(['Population in 2004 is ', num2str(y_new(4))])