y=polyval([ 0 -2 -3]);
root_s=roots(y);
root_s

a= polynominal
b = polynominal2
conv(a, b)
%multiplies 2 polynominals together,
roots(a)
%finds roots of polynominal
a+b = new polynominal
%requires both to be the same size, regardless of degree
[q, r]=deconv(a, b)
%division of 2 polynominals a, b, q = divided polynominal, r = remainder
polyder(a)
%differebtuate polynominal
polyint(a)
%integrate polynominal
polyfit(a)
%best curve fit line