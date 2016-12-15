function y4 = Fit(x,y,n,x1) %x,y????n?????
m = length(x);
syms xx
X1 = zeros(1,2*n);
for i = 1:2*n
    X1(i) = sum(x.^i);
end
X2 = [m,X1(1:n)];
X3 = zeros(n,n+1);
for j = 1:n
    X3(j,:) = X1(j:j+n);
end
X = [X2;X3];
Y=zeros(1,n);
for k = 1:n
    Y(k) = sum(x.^k.*y);
end
Y = [sum(y),Y];
Y = Y';
y3 = X\Y
z=0; 
for k=1:n      
    z=z+y3(k)*xx.^(k-1);
end
y4 = subs(z,xx,x1);

    