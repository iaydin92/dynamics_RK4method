t = linspace(0,5); u0 = [15*pi/180;0];
f = @(t,u)([u(2);-0.1875*u(2)-4.9667*sin(u(1))]); %fuction is given in readme file 
uRK4 = RK4System(f,t,u0);
theta1 = uRK4(1,:); plot(t,theta1)
hold on
u0 = [30*pi/180;0];
uRK4 = RK4System(f,t,u0);
theta2 = uRK4(1,:); plot(t,theta2)

