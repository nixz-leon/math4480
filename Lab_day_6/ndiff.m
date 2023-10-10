function df = ndiff(x,f)
n = length(x);
df = zeros(n,1);
for i = 1:n
    if i == 1
        df(i) = (f(i+1)-f(i)) /(x(i+1)-x(i));
    elseif i == n
        df(i) = (f(i)-f(i-1))/(x(i)-x(i-1));
    else
        df(i) = (f(i+1)-f(i-1))/(x(i+1)-x(i-1));
    end
end
end
