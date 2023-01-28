%% Задание1
a = [1.3, -3, 0.5];
b = [4.2, 6.5, -2];
cross(a,b)
%% Задание2
a = [1.3, -3, 0.5];
b = [4.2, 6.5, -2];
cross(a,b) + cross(b,a)
%% Задание3
clc;
a = [3.5, 0.1, 0];
b = [0.5, 2.1, 1];
c = [-0.2, -1.9, 2.8];
dot(a,cross(b,c))
%% Задание4
clc;
a = [3.5, 0.1, 0];
b = [0.5, 2.1, 1];
dot(a,b)
%% Задание5
clc;
a = [1 2 3];
b = [4 5 6];
c = [8 7 8];
abs(dot(a,cross(b,c)))
%% Задание6
clc;
a = [1 2 3];
b = [4 4 6 5];
(a.*b')'
%% Задание7
figure; 
hold on, grid on, axis equal;
phi = -pi:0.1*pi:pi; 
e = [0.5 1 2];
r1 = 1 ./ (1-e(1).*cos(phi));
r2 = 1 ./ (1-e(2).*cos(phi));
r3 = 1 ./ (1-e(3).*cos(phi));
[x,y] = pol2cart(phi, r1);
plot(x,y);
[x,y] = pol2cart(phi, r2);
plot(x,y);
[x,y] = pol2cart(phi, r3);
plot(x,y);
%% Задание8
clc;
phi = -pi:0.05*pi:pi; 
e = [0.5 1 2];
r1 = 1 ./ (1-e(1).*cos(phi));
r2 = 1 ./ (1-e(2).*cos(phi));
r3 = 1 ./ (1-e(3).*cos(phi));
figure; hold on, grid on;
[x, y, z] = pol2cart(phi, transpose(r1), phi);
plot3(x,y,z);
view([-40 16])
figure; hold on; grid on;
[x, y, z] = pol2cart(phi, transpose(r2), phi);
plot3(x,y,z);
view([-40 16])
figure; hold on; grid on;
[x, y, z] = pol2cart(phi, transpose(r3), phi);
plot3(x,y,z);
view([-40 16])
%% Задание9
figure;
hold on, grid on;
angle = -pi:0.01*pi:pi;
p = 1;
[x,y,z] = sph2cart(angle,angle',p);
plot3(x,y,z);
view(120,30);
%% Задание10
figure;
hold on, grid on;
angle = -pi:0.01*pi:pi;
p = 1;
[x,y,z] = sph2cart(angle',angle,p);
plot3(x,y,z);
view(120,30);