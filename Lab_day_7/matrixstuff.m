function [i,e] = matrixstuff(A)
d = det(A);
n = size(a(1));
e = zeros(n);
if abs(d) > 0
    i = inv(A);
    e = eig(A);
end
end

