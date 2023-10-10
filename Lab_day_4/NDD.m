function Y = NDD(x,y,X)

n = length(x);

C = zeros(n);

C(:,1) = y';
for i = 2:n
    for j = i:n
        C(j,i) = (C(j,i-1)-C(j-1,i-1))/(x(j)-x(j-(i-1)));
    end
end

p = diag(C);

Y = p(1) + p(2)*(X+x(1)) + p(3)*(X+x(1)).*(X-x(2)) + p(4)*(X+x(1)).*(X-x(2)).*(X-x(3)) + p(5)*(X+x(1)).*(X-x(2)).*(X-x(3)).*(X-x(4));
plot(X,Y,x,f,'o')