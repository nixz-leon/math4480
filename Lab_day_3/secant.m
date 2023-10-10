function [p,n] = secant(p0, p1, func, tol)

n=0;
%the other conditional is abs(p-p0)>tol 
%usefull is function is slowly varying
while abs(feval(func,p1))>tol   
    p = p1 - (feval(func,p1)*(p1-p0))/(feval(func,p1)-feval(func,p0));
    n = n+1;
    %out catch for divergence
    if n >= 100
        disp('Method appears to be diverging')
        return
    else
        fprintf('p_%2.0f = %4.30f \n',[n,p]);
    end
    p0 = p1;
    p1 = p;
end
end