n=40;
%for i=1:n+1
 %   x0(i) = cos(pi*(2*i - 1)/(2*n+2));
%end
x0=-1:2/n:1;  
y0=1./(1+25*x0.^2); 
x=-1:.001:1;  
y1=lagrange(x0,y0,x); 
y=1./(1+25*x.^2);  
plot(x,y,x,y1,'-.',x0,y0,'p');  
legend('Runge Function','interpolating function',' interpolating point'); 
title('n=40, Runge Phenomenon by Lagrange Interploating with New Step'); 
xlabel('x'); 
ylabel('y');