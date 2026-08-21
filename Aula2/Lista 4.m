%% LISTA 4 - MATLAB
% Aula 4
% Sistema Massa-Mola-Amortecedor, Circuito RC e Sistema Massa-Atrito

clear;
clc;
close all;

%% 1. Sistema massa-mola-amortecedor - Caixa Branca

% Dados do sistema
M = 2;      % Massa (kg)
B = 3;      % Coeficiente de amortecimento
K = 8;      % Constante elastica

% Funcao de transferencia:
% G(s) = 1 / (M*s^2 + B*s + K)

num1 = 1;
den1 = [M B K];

G1 = tf(num1, den1);

% Mostra a funcao de transferencia no Command Window
disp('==============================================');
disp('1. SISTEMA MASSA-MOLA-AMORTECEDOR');
disp('==============================================');
disp('Funcao de transferencia:');
G1

% Resposta ao degrau durante 15 segundos
figure;
step(G1, 15);
grid on;
xlabel('Tempo (s)');
ylabel('Resposta');
title('Resposta ao Degrau - Sistema Massa-Mola-Amortecedor');


%% 2. Circuito RC - Caixa Cinza

% Dados do circuito
R = 1000;       % Resistencia (Ohm)
tau = 2;        % Constante de tempo (s)

% Calculo da capacitancia
C = tau / R;

% Funcao de transferencia do circuito RC:
% G(s) = 1 / (R*C*s + 1)
%
% Como R*C = tau:
% G(s) = 1 / (2*s + 1)

num2 = 1;
den2 = [R*C 1];

G2 = tf(num2, den2);

% Mostra o valor de C e a funcao de transferencia
disp(' ');
disp('==============================================');
disp('2. CIRCUITO RC');
disp('==============================================');
fprintf('Valor da capacitancia C = %.6f F\n', C);
disp('Funcao de transferencia:');
G2

% Resposta ao degrau durante 10 segundos
figure;
step(G2, 10);
grid on;
xlabel('Tempo (s)');
ylabel('Tensao de saida');
title('Resposta ao Degrau - Circuito RC');


%% 3. Sistema massa-atrito - Caixa Cinza

% Dados do experimento
M = 4;          % Massa (kg)
F = 1;          % Forca aplicada (N)
v = 0.5;        % Velocidade estabilizada (m/s)

% Em regime permanente:
% F = B*v
%
% Portanto:
% B = F/v

B = F / v;

% Funcao de transferencia:
% G(s) = V(s)/F(s) = 1/(M*s + B)

num3 = 1;
den3 = [M B];

G3 = tf(num3, den3);

% Mostra o valor de B e a funcao de transferencia
disp(' ');
disp('==============================================');
disp('3. SISTEMA MASSA-ATRITO');
disp('==============================================');
fprintf('Valor do coeficiente de atrito B = %.2f\n', B);
disp('Funcao de transferencia:');
G3

% Resposta do sistema a mesma forca aplicada no experimento
% Forca aplicada = 1 N
figure;
step(F*G3);
grid on;
xlabel('Tempo (s)');
ylabel('Velocidade (m/s)');
title('Resposta a Forca de 1 N - Sistema Massa-Atrito');