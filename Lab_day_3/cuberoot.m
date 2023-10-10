function [p,n] = cuberoot(p, tol) 
a= 10;
n = 0;
fp = (p*p*p) -a;
fprintf('f(%4.30f) = %4.30f \n',[p,fp]);
%looking at the the f(p) rather than the p value for tolerance check
while abs(fp)>tol
    p = (2/3)*p - (a/(p*p));% newton iteration step
    n = n+1;
    %this is to catch when a = 2 or 10, for readability
    if fp == (p*p*p) -a;
        return
    end
    fp = (p*p*p) -a;
    fprintf('f(%4.30f) = %4.30f \n',[p,fp]);
end

end
