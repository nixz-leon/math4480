function a = o3ndiff(h)

a = (1/(2*h*h*h))*(exp(0+(2*h)) - exp(0-(2*h))- 2*(exp(0+h)-exp(0-h)));
end
