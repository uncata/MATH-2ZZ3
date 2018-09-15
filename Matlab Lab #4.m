%Problem #1:
x = -1:0.1:1;
y = -1:0.1:1;
z = -1:0.25:4;

[x,y] = meshgrid(x,y);
z1 = y.^9+3;
surf(x,y,z1);
hold on;
z2 = zeros(size(x));
surf(x,y,z2);
hold on;

[x,z] = meshgrid(x,z);
y1 = x.^6;
surf(x,y1,z);
hold on;
y2 = x.^1;
surf(x,y2,z);
hold on;
y3 = ones(size(x));
surf(x,y3,z);
hold off;

xlabel('x');
ylabel('y');
zlabel('z');
title('Saon Pal, 400131159');

%Problem #2:
rho = @(x,y,z) y.^2;

a = -1;
b = 0; 
c = @(x) x.^6;
d = 1;
u = 0;
v = @(x,y) y.^9 + 3;
m1 = integral3(rho,a,b,c,d,u,v);

a2 = 0;
b2 = 1;
c2 = @(x) x;
d2 = 1;
u2 = 0;
v2 = @(x,y) y.^9 + 3;
m2= integral3(rho,a2,b2,c2,d2,u2,v2);

mass = m1 + m2;
q2 = mass;
disp(['Problem #2:',num2str(q2)]);

%Problem #3:
rho2 = @(x,y,z) z.^2;

m_1 = integral3(rho2,a,b,c,d,u,v);
m_2 = integral3(rho2,a2,b2,c2,d2,u2,v2);
mass2 = m_1 + m_2;

fun1 = @(x,y,z)x.*z.^2;
Myz1 = integral3(fun1,a,b,c,d,u,v);
Myz2 = integral3(fun1,a2,b2,c2,d2,u2,v2);
Myz = Myz1 + Myz2;

fun2 = @(x,y,z)y.*z.^2;
Mxz1 = integral3(fun2,a,b,c,d,u,v);
Mxz2 = integral3(fun2,a2,b2,c2,d2,u2,v2);
Mxz = Mxz1 + Mxz2;

fun3 = @(x,y,z)z.*z.^2;
Mxy1 = integral3(fun3,a,b,c,d,u,v);
Mxy2 = integral3(fun3,a2,b2,c2,d2,u2,v2);
Mxy = Mxy1 + Mxy2;

xc = Myz / mass2; 
yc = Mxz / mass2; 
zc = Mxy / mass2;
q3 = [ xc yc zc];
disp(['Problem #3:',num2str(xc),',',num2str(yc),',',num2str(zc)]);

%Problem #4:

x=linspace(0,5,20);
y=linspace(-3,3,20);
[x,y] = meshgrid(x,y);

z1 = sqrt(9-y.^2);
z2 = -sqrt(9-y.^2);

fx1 = (x + y.*z1);
fx2 = (x + y.*z2);
fy = (-3.*x.*y.^2);
fz1 = (x.^2.*z1.^2);
fz2 = (x.^2.*z2.^2);

hold on;
surf(x,y,z1,x);
surf(x,y,z2,x);
quiver3(x,y,z1,fx1,fy,fz1,6,'color','r');
quiver3(x,y,z2,fx2,fy,fz2,6,'color','r');

xN = linspace(0,5,20);
yN = linspace(-3,3,20);

[xN, yN] = meshgrid(xN, yN);
zN1 = sqrt(9-y.^2);
zN2 = -sqrt(9-y.^2);

surf(xN,yN,zN1);
surf(xN,yN,zN2);

rho=linspace(0,3,20);
theta=linspace(0,2*pi,20);
[rho, theta] = meshgrid(rho, theta);
surf((rho.*0),(rho.*cos(theta)),(rho.*sin(theta)),rho.*0);

xlim([-0.5,5]);
ylim([-4,4]);
zlim([-3,3.5]);
grid on;
view(3);
title('Saon Pal, 400131159');
xlabel('x'); ylabel('y'); zlabel('z');

%Problem #5:
divF = @(x,y,z)(1-6.*x.*y+2.*x.^2.*z);
z1 = @(x,y) -sqrt(9-y.^2);
z2 = @(x,y) sqrt(9-y.^2);
RHS = integral3(divF,0,5,-3,3,z1,z2);
q5=RHS;
disp(['Problem #5:',num2str(q5)]);

%Problem #6:
u = @(x,y,z) -sqrt(9-x.^2);
v = @(x,y,z) sqrt(9-x.^2);
s1 = @(y,z) -1.*(y.*z);
s2 = @(y,z) 1.*(5+y.*z);
f1 = integral2(s1,-3,3,u,v);
f2 = integral2(s2,-3,3,u,v);
f3 = RHS - f1 - f2;
q6=[f1 f2 f3];
disp(['Problem #6:',num2str(f1),',',num2str(f2),',',num2str(f3)]);