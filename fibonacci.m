function f = fibonacci(n)

F(1) = 1;
F(2) = 1;
for j=3:n
    F(j) = F(j-1) + F(j-2);
end
f = F(n);
end