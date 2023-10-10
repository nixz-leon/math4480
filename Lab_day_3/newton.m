function [p,n] = newton(p0, func, funcp, tol)

%performing the first iteration
p = p0 - feval(func,p0)/feval(funcp,p0);
n=1;
%the other conditional is abs(p-p0)>tol 
%usefull is function is slowly varying
while abs(feval(func,p0))>tol   
    p = p0 - (feval(func,p0)/feval(funcp,p0));
    n = n+1;
    %check to stop infinite loop
    if n >= 100
        disp('Method appears to be diverging')
        return
    else
        %fprintf('p_%2.0f = %4.30f \n',[n,p]);
    end
    p0 = p;
end
end