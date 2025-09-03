% prueba pendulo
[t,x] = ode45(@pendulo_inverso,[0 10],[0 0 deg2rad(1) deg2rad(0)]);
figure(1);
plot(t,x(:,3)); % 3 para ver la gráfica de alpha y 1 para ver la de x
figure(2);
plot(t,x(:,1));
grid on;
