a = 0;
b= 1;

[T1,M1,S1,G1] = nint(a,b,@intfunc, 2);
[T2,M2,S2,G2] = nint(a,b,@intfunc, 4);
[T3,M3,S3,G3] = nint(a,b,@intfunc, 8);
[T4,M4,S4,G4] = nint(a,b,@intfunc, 16);
[T5,M5,S5,G5] = nint(a,b,@intfunc, 32);


actual = pi;
%actual = 2/3;
ET = abs(actual - [T1,T2,T3,T4,T5]);
EM = abs(actual - [M1,M2,M3,M4,M5]);
ES = abs(actual - [S1,S2,S3,S4,S5]);
EG = abs(actual - [G1,G2,G3,G4,G5]);

xlog = [(b-a)/2,(b-a)/4,(b-a)/8,(b-a)/16,(b-a)/32];

loglog(xlog,ET,'red', xlog, EM,'black' ,xlog,ES, 'blue', xlog, EG, 'green');
Tslope = (log(ET(4))-log(ET(1)))./(log(xlog(4))-log(xlog(1)))
Mslope = (log(EM(4))-log(EM(1)))./(log(xlog(4))-log(xlog(1)))
Sslope = (log(ES(4))-log(ES(1)))./(log(xlog(4))-log(xlog(1)))
Gslope = (log(EG(4))-log(EG(1)))./(log(xlog(4))-log(xlog(1)))

