% Problem #1(a):
L = 9;
x = linspace(0,L,200);
f = sqrt(9-x.^1);

plot(x,f,'r','linewidth', 3);
title('Saon Pal, 400131159');
x = linspace(-L,0,200);
f2 = -sqrt(9-(-x.^1));

hold on
plot(x,f2,'b','linewidth',3);
a = zeros(1,7);
x = linspace(-2*L,-L,200);
fa = zeros(1,200);
for n = 1:7
    y = f.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
    plot(x,fa,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(-L,0,200);
fa = zeros(1,200);
for n = 1:7
    y = f2.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
    plot(x,fa,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(0,L,200);
fa = zeros(1,200);

for n = 1:7
    y = f.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
    plot(x,fa,'k','linewidth',1);
end
a = zeros(1,7);
x = linspace(L,2*L,200);
fa = zeros(1,200);
for n = 1:7
    y = f2.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
    plot(x,fa,'k','linewidth',1);
end
hold off;

% Problem #1(b):
x = linspace(0,L,200);
f = sqrt(9-x.^1);
plot(x,f,'r','linewidth', 3);
title('Saon Pal, 400131159');
x = linspace(-L,0,200);
f2 = sqrt(9-(-x).^1);

hold on;
plot(x,f2,'b','linewidth',3);
a = zeros(1,7);
x = linspace(-2*L,-L,200);
a0 = (2/L)*trapz(x,f);
fb = zeros(1,200);
for n = 1:7
    y = f.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
    plot(x,final,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(-L,0,200);
a0 = (2/L)*trapz(x,f2);
fb = zeros(1,200);
for n = 1:7
    y = f2.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
    plot(x,final,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(0,L,200);
a0 = (2/L)*trapz(x,f);
fb = zeros(1,200);
for n = 1:7
    y = f.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
    plot(x,final,'k','linewidth',1);
end

a = zeros(1,7);
x = linspace(L,2*L,200);
a0 = (2/L)*trapz(x,f2);
fb = zeros(1,200);
for n = 1:7
    y = f2.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
    plot(x,final,'k','linewidth',1);
end
hold off

%Problem #1(c):
x = linspace(0,L,200);
f = sqrt(9-x.^1);
plot(x,f,'r','linewidth', 3);
title('Saon Pal, 400131159');
x = linspace(-L,0,200);

hold on;
plot(x,f,'b','linewidth',3);
ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(-2*L,-L,200);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,200);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
    plot(x,fin,'k','linewidth',1);
end

ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(-L,0,200);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,200);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
    plot(x,fin,'k','linewidth',1);
end

ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(0,L,200);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,200);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
    plot(x,fin,'k','linewidth',1);
end

ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(L,2*L,200);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,200);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
    plot(x,fin,'k','linewidth',1);
end
hold off;

% Problem #2:
a = zeros(1,7);
x = linspace(0,L,201);
f = sqrt(9-x.^1);
fa = zeros(1,201);
for n = 1:7
    y = f.*sin(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fa = fa + a(n)*sin(n*pi*x/L);
end
Err1 = abs(fa(101) - sqrt(9-4.5));
a = zeros(1,7);
x = linspace(0,L,201);
a0 = (2/L)*trapz(x,f);
fb = zeros(1,201);
for n = 1:7
    y = f.*cos(n*pi*x/L);
    a(n) = (2/L)*trapz(x,y);
    fb = fb + a(n)*cos(n*pi*x/L);
    final = fb + a0/2;
end
Err2 = abs(final(101) - sqrt(9-4.5));
ai = zeros(1,7);
bi = zeros(1,7);
x = linspace(0,L,201);
a0 = (2/L)*trapz(x,f);
fc = zeros(1,201);
for n = 1:7
    y = f.*sin(2*n*pi*x/L);
    ai(n) = (2/L)*trapz(x,y);
    y = f.*cos(2*n*pi*x/L);
    bi(n) = (2/L)*trapz(x,y);
    fc = fc + ai(n)*sin(2*n*pi*x/L) + bi(n)*cos(2*n*pi*x/L);
    fin = fc + a0/2;
end
Err3 = abs(fin(101) - sqrt(9-4.5));
disp(['Problem #2: ' num2str(Err1) ',' num2str(Err2) ',' num2str(Err3)])

% Problem #3:
L = 2*pi;
N = 200;
x = L*(0:N-1)/N;
G = 8*sin(13*pi*x) + 3*cos(10*pi*x);
F = fft(G);
abs_F = abs(fftshift(F));
alpha = (0:N-1)-N/2;
semilogy(alpha,abs_F);
title('Saon Pal, 400131159')