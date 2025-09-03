% pendulo invertido
function dx = pendulo_inverso(t,x)
Ip = 0.0079; Mc = 0.7071; Lp = 0.3302; Mp = 0.23;
Fc = 0; Beq = 4.3; g = 9.81; Bp = 0.0024;
dx = zeros(2,1);
dx(1) = x(2);
dx(2) = 1/[(Mc+Mp)*Ip + Mc*Mp*Lp*Lp + Mp*Mp*Lp*Lp*sin(x(3))*sin(x(3))]*[(Ip+Mp*Lp*Lp)*Fc + Mp*Mp*Lp*Lp*g*cos(x(3))*sin(x(3)) - (Ip+Mp*Lp*Lp)*Beq*x(2) - (Ip*Mp*Lp-Mp*Mp*Lp*Lp*Lp)*x(4)*x(4)*sin(x(3)) - Mp*Lp*x(4)*cos(x(3))*Bp];
dx(3) = x(4);
dx(4) = 1/[(Mc+Mp)*Ip + Mc*Mp*Lp*Lp + Mp*Mp*Lp*Lp*sin(x(3))*sin(x(3))]*[(Mc+Mp)*Mp*g*Lp*sin(x(3)) - (Mc+Mp)*Bp*x(4)+Fc*Mp*Lp*cos(x(3)) - Mp*Mp*Lp*Lp*x(4)*x(4)*sin(x(3))*cos(x(3)) - Beq*Mp*Lp*x(2)*cos(x(3))];
