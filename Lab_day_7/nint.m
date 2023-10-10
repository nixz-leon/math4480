function [T,M,S,G] = nint(a,b,func,n)

h = (b-a)./n;
T = 0;
M = 0;
S = 0;
G = 0;
for i=1:n
    T = T + feval(func, a+(i-1)*h) + feval(func, a+(i)*h);
    M = M + feval(func, a + (2*i-1)*(h/2));
   
end
T = (h/2) * T;
M = h*M;
end
