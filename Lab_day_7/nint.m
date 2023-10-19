function [T,M,S,G] = nint(a,b,func,n)

h = (b-a)./n;
T = 0;
M = 0;
S = 0;
G = 0;
tic
for i=1:n
    T = T + feval(func, a+(i-1)*h) + feval(func, a+(i)*h);
end
toc
tic
for i=1:n
    M = M + feval(func, a + (2*i-1)*(h/2));
end
toc
tic
[x,w] = gauss(n);
t = (b-a)/2.*x + (b-a)./2;
for i=1:n
    G = G + feval(func, t(i)).*w(i); 
end
toc
tic
for i=1:n
    j = mod(i,2);
    if j == 0
        S = S + feval(func,a+(i-2)*h) + 4 * feval(func, a + (i-1)*h) + feval(func,a+i*h);
    else
    end  
end
toc
T = (h/2) * T;
M = h*M;
S = (h/3) * S;
G = (b-a)./2 * G;
end
