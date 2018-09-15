%Problem #1:
u = linspace(0, 2*pi, 35);
v = linspace(0,2*pi, 35);
[u,v] = meshgrid(u,v);

x = (4 + 6*cos(v))*cos(u);
y = (4 + 6*cos(v))*sin(u);
z = 6*sin(v);

surf(x,y,z);
title('Saon Pal, 400131159')

%Problem #2:
syms u v
x = (4 + 6*cos(v))*cos(u);
y = (4 + 6*cos(v))*sin(u);
z = 6*sin(v);

ru = [diff(x,u);diff(y,u);diff(z,u)];
rv = [diff(x,v);diff(y,v);diff(z,v)];

ruxrv = cross(ru,rv);
norm_ruxrv = sqrt(ruxrv(1)^2 + ruxrv(2)^2 + ruxrv(3)^2);

fun = matlabFunction(norm_ruxrv);
c = 0;
d = 2*pi;
integral2(fun,0,2*pi,c,d);
disp(['Problem #2: ', num2str(integral2(fun,0,2*pi,c,d))]);

% Problem #3:
syms x y
P = exp(x^2)/y^4;
Q = cos(x^5)*log(y^4*exp(x)+1);

integrand_rhs = diff(Q,x) - diff(P,y);
disp('Problem #3(a):');
disp(integrand_rhs);

a = -1;
b = 1;
c = 4;
d = @(x) 5-x.^2;
fun = matlabFunction(integrand_rhs);
rhs = integral2(fun,a,b,c,d);
disp(['Problem #3(b):', num2str(rhs)]);

% Problem #4:
fun = matlabFunction(P); 
line_integrand = @(x,y)1.0./4.^4.*exp(x.^2);
lhs = quad(line_integrand,-1,1); 
disp(['Problem #4:', num2str(lhs),',',num2str(rhs-lhs)]);

% Problem #5:
figure()
x = -1:0.1:1;
y1 = 5-x.^2;
y2 = 4 + (x.^2 - x.^2); 
N = 20;

plot(x,y1,'k','LineWidth',2);
hold on
plot(x,y2,'k','LineWidth',2);
grid off

for i = 1:N+1
    Fx1(i) = (6*x(i)^2 + 5*y1(i))*exp(sqrt(x(i)+1));
    Fy1(i) = (5*x(i)^2 + x(i)*y1(i))*exp(sqrt(y1(i)));
end

for i = 1:N+1
    Fx2(i) = (6*x(i)^2 + 5*y2(i))*exp(sqrt(x(i)+1));
    Fy2(i) = (5*x(i)^2 + x(i)*y2(i))*exp(sqrt(y2(i)));
end
quiver(x,y1,Fx1,Fy1); 
hold on; 
quiver(x,y2,Fx2,Fy2); 
xlim([-1.5 1.5]); ylim([3.5 5.5]);
title('Saon Pal, 40013159')

% Problem #6:
F1 = @(t) (6*t.^2+5*4).*exp(sqrt(t+1));
W1 = integral(F1,-1,1);
F2 = @(t) (6*t.^2+5*(5-t.^2)).*exp(sqrt(t+1))+(5*t.^2+t.*(5-t.^2)).*exp(sqrt(5-t.^2)).*t.*-2;
W2 = integral(F2,1,-1);
W = W1 + W2;
disp(['Problem #6: ', num2str(W)]);