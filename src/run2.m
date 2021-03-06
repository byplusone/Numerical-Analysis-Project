n=10;  
x0=-1:2/n:1;  
y0=1./(1+25*x0.^2);
x=-1:.001:1;  
y=1./(1+25*x.^2);
y1=spline(x0,y0,x);
plot(x,y,x,y1,'-.',x0,y0,'p');  
legend('Runge Function','spline function',' spline point');
title('n=10, Runge Phenomenon by Spline'); 
xlabel('x'); 
ylabel('y');