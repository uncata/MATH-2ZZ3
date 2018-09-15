% Problem #1:
[x,y] = meshgrid(-1:0.02:1, -1:0.02:1);
f = @(x,y)3*(1-3*x).^2.*exp(-2*x.^2 - (3*y+1).^2) ... 
- 10*(3*x/5 - 27*x.^3 - 243*y.^5).*exp(-4*x.^2-6*y.^2) ... 
- 1/3*exp(-(3*x+1).^2 - 9*y.^2) + (x.^2+y.^2) - 1;
contourf(x,y,f(x,y),20);
colorbar

% syms x y
% f = 3*(1-3*x).^2.*exp(-2*x.^2 - (3*y+1).^2) ... 
% - 10*(3*x/5 - 27*x.^3 - 243*y.^5).*exp(-4*x.^2-6*y.^2) ... 
% - 1/3*exp(-(3*x+1).^2 - 9*y.^2) + (x.^2+y.^2) - 1; 
% diff(f,x)
% diff(f,y)

[x,y] = meshgrid(-1:0.1:1, -1:0.1:1);
SDX = @(x,y)-(18*(1-3*x)).*exp(-2*x.^2-(3*y+1).^2) ... 
- 6*(1-3*x).^2.*2.*x.*exp(-2*x.^2-(3*y+1).^2) ... 
- (10*(3/5-81*x.^2)).*exp(-4*x.^2-6*y.^2) ... 
+ (20*((3/5)*x-27*x.^3-243*y.^5)).*4.*x.*exp(-4*x.^2-6*y.^2) ... 
- (1/3*(-18*x-6)).*exp(-(3*x+1).^2-9*y.^2)+2*x; 
SDY = @(x,y)3*(1-3*x).^2.*(-18*y-6).*exp(-2*x.^2-(3*y+1).^2) ... 
+ 12150*y.^4.*exp(-4*x.^2-6*y.^2) ... 
+ (20*((3/5)*x-27*x.^3-243*y.^5)).*6.*y.*exp(-4*x.^2-6*y.^2) ... 
    + 6*y.*exp(-(3*x+1).^2-9*y.^2)+2*y;
hold on;
quiver(x,y,SDX(x,y),SDY(x,y),'k')
hold off;
title('Saon Pal, 400131159');

%Problem #2:
x0 = [-0.18;0.62];
rprime = @(t,x)[-(-(18*(1-3*x(1))).*exp(-2*x(1).^2-(3*x(2)+1).^2) ... 
- 6*(1-3*x(1)).^2.*2.*x(1).*exp(-2*x(1).^2-(3*x(2)+1).^2) ... 
- (10*(3/5-81*x(1).^2)).*exp(-4*x(1).^2-6*x(2).^2) ... 
+ (20*((3/5)*x(1)-27*x(1).^3-243*x(2).^5)).*4.*x(1).*exp(-4*x(1).^2-6*x(2).^2) ... 
- (1/3*(-18*x(1)-6)).*exp(-(3*x(1)+1).^2-9*x(2).^2)+2*x(1));-(3*(1-3*x(1)).^2.*(-18*x(2)-6).*exp(-2*x(1).^2-(3*x(2)+1).^2) ... 
+ 12150*x(2).^4.*exp(-4*x(1).^2-6*x(2).^2) ... 
+ (20*((3/5)*x(1)-27*x(1).^3-243*x(2).^5)).*6.*x(2).*exp(-4*x(1).^2-6*x(2).^2) ... 
    + 6*x(2).*exp(-(3*x(1)+1).^2-9*x(2).^2)+2*x(2))];
tDomain = [0:0.001:5.0];
[t r] = ode45(rprime,tDomain,x0);
disp(['Problem #2: ',num2str(r(end,1)),',',num2str(r(end,2)),',',num2str(f(r(end,1),r(end,2)))])
%f(r(:,1),r(:,2))

%Problem #3:
[x,y] = meshgrid(-1:0.02:1, -1:0.02:1);
contourf(x,y,f(x,y),20);
colorbar
[x,y] = meshgrid(-1:0.1:1, -1:0.1:1);
hold on;
plot(r(1:7,1),r(1:7,2),'k','Linewidth',2)
plot(r(8:end,1),r(8:end,2),'w','Linewidth',2)
quiver(x,y,SDX(x,y),SDY(x,y),'k')
hold off;
title('Saon Pal, 400131159');

%Problem #4:
x0 = r(1,1);
y0 = r(1,2);
z0 = f(r(1,1),r(1,2));
xf = r(end,1);
yf = r(end,2);
zf = f(r(end,1),r(end,2));
distance = sqrt((xf - x0)^2+(yf - y0)^2+(zf - z0)^2);
disp(['Problem #4: ', num2str(distance)]);

%Problem #5:
elevationloss = abs(zf - z0);
disp(['Problem #5: ', num2str(elevationloss)]);

%Problem #6:
N = length(r);
x = r(:,1);
y = r(:,2);
z = f(r(:,1),r(:,2));

len = 0;
for i=1:N-1
    len = len + sqrt((x(i+1) - x(i))^2+(y(i+1) - y(i))^2+(z(i+1) - z(i))^2);
end
disp(['Problem #6: ',num2str(len)]);