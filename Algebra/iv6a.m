%% Задание1
a = input('Вектор в []: ');
fliplr(a)
%% Задание2
clc;
a = input('Вектор в []: ');
a1 = a(mod(a,2)==0)
a2 = a(mod(a,2)==1)
%% Задание3
clc;
a = input('Вектор в []: ');
sum(a(a<0))
%% Задание4
clc;
a = input('Вектор в []: ');
geo = geomean(a)
for i = 1:length(a)
    if abs(a(i)*100/geo) > 130
        a(i) = geo;
    end
end
a
% в онлайн matlab заработал код, а у меня не работает. почему??
%% Задание5
clc;
a = input('Вектор в []: ');
mi = min(a);
ma = max(a);
for i = 1:length(a)
    if a(i) == ma
        a(i) = mi;
    end
end
a
%% Задание6
clc;
a = input('Матрица в []: ');
disp("a > 0: " + length(a(a>0)));
disp("a = 0: " + length(a(a==0)));
disp("a < 0: " + length(a(a<0)));
%% Задание7
clc;
A = [2 3 3; 4 2 3; 6 5 6];
b = [8; 7; 7];
x1 = A\b
cond(A) % 2.6018e+16
C = [A b];
D = rref(C);
x2 = D(:,end)
checkx1 = A*x1
checkx2 = A*x2
% оба неверные получается
%% Задание8
clc;
t = [0; 0.1; 0.2; 0.3; 0.4; 0.5];
y = [4.25; 3.95; 3.64; 3.41; 3.21; 3.04];
A = [exp(-t) t];
x = A\y;
a = x(1)
b = x(2)
figure; hold on; grid on;
plot(t, y, 's');
fplot(@(t) a.*exp(-t) + b.*t, [0 0.5])
%% Задание9
clc;
A = [1 2 3; 3 4 5];
b = [2; 2];
x = A\b
isequal(round(A*x), b) % => ответ верный
%% Задание10
clc;
A = [2 3 3; -2 -3 -3];
b = [8; 7];
[x, r] = linsolve(A,b)
cond(A) % ответ опять видимо неверный
%% Задание11
clc;
A = [2 3 3; -2 -3 -3];
b = [8; 7];
[q, r] = qr(A);
x = (r\q'*b)
%% Задание12
clc;
A = [2 4 5; 3 6 7; 8 5 2];
[x, y] = eig(A);
for i = 1:length(x)
    vec = x(:,i)
end
for i = 1:length(x)
    p = y(i,i)
end
A*x(:,1)
y(1,1)*x(:,1)
