%Problem #1:
fileID = fopen('math2zz3_hw1_data_file.txt');
data = fscanf(fileID,'%u%g%g%g',[4 Inf]);
fclose(fileID);

t = 1:1:2000;
rx = 5*data(2,:);
ry = 8*data(3,:);
rz = 5*data(4,:);

plot3(rx,ry,rz,'Linewidth',2)
xlabel('x'), ylabel('y'), zlabel('z');  
title('Saon Pal, 400131159');

%Problem #2(a):
N = data(1,end);
drx = zeros(1,N-1);
dry = zeros(1,N-1);
drz = zeros(1,N-1);

for i=1:N-1
  drx(i) = (rx(i+1) - rx(i))/(t(i+1)-t(i));
  dry(i) = (ry(i+1) - ry(i))/(t(i+1)-t(i));
  drz(i) = (rz(i+1) - rz(i))/(t(i+1)-t(i));
end

norm_dr = sqrt(drx.^2+dry.^2+drz.^2);
Tx = drx./norm_dr;
Ty = dry./norm_dr;
Tz = drz./norm_dr;
disp(['Problem #2(a):', num2str(Tx(894)), ',', num2str(Ty(894)), ',', num2str(Tz(894))])

%Problem #2(b):
N = data(1,end);
dTx = zeros(1,N-1);
dTy = zeros(1,N-1);
dTz = zeros(1,N-1);

for i=1:N-2
  dTx(i) = (Tx(i+1) - Tx(i))/(t(i+1)-t(i));
  dTy(i) = (Ty(i+1) - Ty(i))/(t(i+1)-t(i));
  dTz(i) = (Tz(i+1) - Tz(i))/(t(i+1)-t(i));
end

norm_dT = sqrt(dTx.^2+dTy.^2+dTz.^2);
Nx = dTx./norm_dT;
Ny = dTy./norm_dT;
Nz = dTz./norm_dT;
disp(['Problem #2(b):', num2str(Nx(479)), ',', num2str(Ny(479)), ',', num2str(Nz(479))])

%Problem #3:
t = 50:200:1850;
T = [Tx;Ty;Tz];
N = [Nx;Ny;Nz]; 
B = cross(T,N);

plot3(rx,ry,rz,'Linewidth',2);
hold on;
quiver3(rx(t),ry(t),rz(t),Tx(t),Ty(t),Tz(t),0.2);
quiver3(rx(t),ry(t),rz(t),Nx(t),Ny(t),Nz(t),0.2);
quiver3(rx(t),ry(t),rz(t),B(1,t),B(2,t),B(3,t),0.2);
hold off;
title('Saon Pal, 400131159');
xlabel('x')
ylabel('y')
zlabel('z')

Problem #4:
k = norm_dT./norm_dr;

plot(k)
xlabel('t')
ylabel('k')

for i=1:200
    if k(i) == max(k)
        disp(['Problem #4:', num2str(i)])
    end
end