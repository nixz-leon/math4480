function [l1,l2,linf] = norms(V);
n = length(V);

l1 = 0;
l2 = 0;
for i=1:n
    l1 = l1 + V(i);
    l2 = l2 + V(i).^2;
end
l2 = sqrt(l2);
linf = max(V);
end