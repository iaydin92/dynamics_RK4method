function u = RK4System(f,x,u0)
u(:,1) = u0;
h = x(2)-x(1); n=length(x);
for i = 1:n-1
    k1 = f(x(i),u(:,i));
    k2 = f(x(i)+h/2,u(:,i)+h*k1/2);
    k3 = f(x(i)+h/2,u(:,i)+h*k2/2);
    k4 = f(x(i)+h,u(:,i)+h*k3);
    u(:,i+1) = u(:,i)+h*(k1+2*k2+2*k3+k4)/6;
end
