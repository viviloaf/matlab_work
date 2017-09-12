%lim as h->0
% f(x+h)=f(x)/h
syms h n x
limit((cos(x+h) - cos(x))/h, h, 0)