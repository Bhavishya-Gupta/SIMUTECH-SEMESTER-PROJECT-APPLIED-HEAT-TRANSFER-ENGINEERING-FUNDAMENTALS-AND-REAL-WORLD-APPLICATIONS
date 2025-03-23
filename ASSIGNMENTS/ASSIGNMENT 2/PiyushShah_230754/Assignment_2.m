clc; clear; 
r1 = 0.05; 
r2 = 10;
k = 5; 
h = 10;
T1 = 100;
T_inf = 20;
L = 1;

% Radius range
r = linspace(r1, r2, 100);

% Thermal resistance of insulation
R_ins = log(r./r1) ./ (2*pi*k*L);

% Thermal resistance of convection
R_conv = 1 ./ (h*2*pi*r*L);

% Total thermal resistance
R_total = R_ins + R_conv;

% Heat transfer rate
Q = (T1 - T_inf) ./ R_total;

% Plot results
plot(r, Q, 'b-', 'LineWidth', 2);
xlabel('Radius (m)');
ylabel('Heat Transfer (W)');
title('Heat Transfer vs Radius');
grid on;