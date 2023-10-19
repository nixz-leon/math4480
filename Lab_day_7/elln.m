function [ell1, ell2, ellinf] = elln(v);


ell1 = sum(abs(v));
ell2 = sqrt(sum(abs(v.^2)));
ellinf = max(abs(v));
end