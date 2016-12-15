function y1=lagrange(x0,y0,x1)
n=length(x0); 
syms x; 
for k=1:n 
    l(k)=x/x; 
    for p=1:n 
        if p~=k  
            l(k)=l(k)*(x-x0(p))/(x0(k)-x0(p));
        end
    end
end
z=0; 
for k=1:n      
    z=z+l(k)*y0(k); 
end
y1=subs(z,x,x1);