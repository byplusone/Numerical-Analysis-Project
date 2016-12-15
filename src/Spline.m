function Spline(x,y,n,s,t)   
for j=1:1:n-1                   
    h(j)=x(j+1)-x(j);  
end
for j=2:1:n-1                          
    r(j)=h(j)/(h(j)+h(j-1));  
end
for j=1:1:n-1                         
    u(j)=1-r(j);  
end
for j=1:1:n-1                          
    f(j)=(y(j+1)-y(j))/h(j);  
end
for j=2:1:n-1                       
    d(j)=6*(f(j)-f(j-1))/(h(j-1)+h(j));  
end
d(1)=0                    
d(n)=0               
a=zeros(n,n);  
for j=1:1:n                      
    a(j,j)=2;  
end

r(1)=0;                    
u(n)=0;  
for j=1:1:n-1                    
    a(j+1,j)=u(j+1);                   
    a(j,j+1)=r(j);  
end
b=inv(a) 
m=b*d'  
p=zeros(n-1,4);  %p???S(x)??????? 
for j=1:1:n-1     
    p(j,1)=m(j)/(6*h(j));                
    p(j,2)=m(j+1)/(6*h(j));                
    p(j,3)=(y(j)-m(j)*(h(j)^2/6))/h(j);                
    p(j,4)=(y(j+1)-m(j+1)*(h(j)^2/6))/h(j);  
end
p
