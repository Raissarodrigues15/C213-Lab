%% LISTA 3 - MATLAB
% Funções, gráficos 2D, repetição, escalas e gráficos 3D

clear;
clc;
close all;

%% ============================================================
% 1. FUNÇÕES E GRÁFICOS 2D
% =============================================================

% Vetor de tempo de 0 a 10 segundos, com passo de 0,1 segundo.
t = 0:0.1:10;

% Senoide com amplitude 2 e frequência angular 3.
senoide = 2 * sin(3 * t);

% Cossenoide com amplitude 2 e frequência angular 3.
cossenoide = 2 * cos(3 * t);

% Mostra as duas curvas na mesma figura.
figure;

plot(t, senoide, 'LineWidth', 1.5);
hold on;
plot(t, cossenoide, 'LineWidth', 1.5);

xlabel('Tempo (s)');
ylabel('Amplitude');
title('Senoide e Cossenoide');
legend('Senoide', 'Cossenoide');
grid on;

% Mostra a quantidade de elementos do vetor de tempo.
fprintf('EXERCÍCIO 1\n');
fprintf('Quantidade de elementos do vetor de tempo: %d\n\n', length(t));


%% ============================================================
% 2. ENTRADA DE DADOS, CONDIÇÃO E GRÁFICO
% =============================================================

% Solicita ao usuário o valor do coeficiente a.
a = input('EXERCÍCIO 2 - Digite o valor do coeficiente a: ');

% Verifica se o coeficiente é positivo, negativo ou igual a zero.
if a > 0
    fprintf('O coeficiente a é positivo.\n');
elseif a < 0
    fprintf('O coeficiente a é negativo.\n');
else
    fprintf('O coeficiente a é igual a zero.\n');
end

% Valores de x entre -10 e 10.
x = -10:0.1:10;

% Função y = a*x + 2.
y = a * x + 2;

% Cria a figura.
figure;

% Gráfico completo da função.
plot(x, y, 'LineWidth', 1.5);
xlabel('x');
ylabel('y');
title('Função y = ax + 2');
grid on;

% Cria uma pequena janela dentro da própria figura
% mostrando somente a região entre x = -2 e x = 2.
x_destaque = -2:0.01:2;
y_destaque = a * x_destaque + 2;

axes('Position', [0.58 0.58 0.30 0.28]);

plot(x_destaque, y_destaque, 'LineWidth', 1.5);
xlabel('x');
ylabel('y');
title('Região entre x = -2 e x = 2');
grid on;
xlim([-2 2]);


%% ============================================================
% 3. REPETIÇÃO E ORGANIZAÇÃO DE GRÁFICOS
% =============================================================

% Cria um vetor para armazenar os cinco primeiros múltiplos de 3.
multiplos = zeros(1, 5);

% Estrutura de repetição para calcular os múltiplos de 3.
for i = 1:5
    multiplos(i) = 3 * i;
end

% Calcula o dobro dos valores obtidos.
dobro = 2 * multiplos;

% Mostra os resultados.
fprintf('\nEXERCÍCIO 3\n');
fprintf('Cinco primeiros múltiplos de 3:\n');
disp(multiplos);

fprintf('Dobro dos valores:\n');
disp(dobro);

% Cria uma janela com dois gráficos.
figure;

% Primeiro gráfico: múltiplos de 3.
subplot(2, 1, 1);
plot(1:5, multiplos, 'o-', 'LineWidth', 1.5);
xlabel('Posição');
ylabel('Valor');
title('Cinco primeiros múltiplos de 3');
grid on;

% Segundo gráfico: dobro dos múltiplos.
subplot(2, 1, 2);
plot(1:5, dobro, 'o-', 'LineWidth', 1.5);
xlabel('Posição');
ylabel('Valor');
title('Dobro dos cinco primeiros múltiplos de 3');
grid on;


%% ============================================================
% 4. COMPARAÇÃO DE ESCALAS
% =============================================================

% Valores positivos de t até 1000.
t4 = 0.1:0.1:1000;

% Função:
% y = 50000 * e^(-0,05 * t)
y4 = 50000 * exp(-0.05 * t4);

% Cria uma janela para os dois gráficos.
figure;

% Primeiro gráfico: escala comum nos dois eixos.
subplot(2, 1, 1);
plot(t4, y4, 'LineWidth', 1.5);
xlabel('Tempo (t)');
ylabel('y');
title('Escala comum nos dois eixos');
grid on;

% Segundo gráfico: escala logarítmica somente no eixo vertical.
subplot(2, 1, 2);
semilogy(t4, y4, 'LineWidth', 1.5);
xlabel('Tempo (t)');
ylabel('y');
title('Escala logarítmica no eixo vertical');
grid on;


%% ============================================================
% 5. GRÁFICOS 3D
% =============================================================

% Valores de x entre 1 e 10.
x5 = linspace(1, 10, 100);

% Valores de y entre 1 e 20.
y5 = linspace(1, 20, 100);

% Cria a malha de coordenadas.
[X, Y] = meshgrid(x5, y5);

% Define a superfície:
% z = sen(x) + cos(y)
Z = sin(X) + cos(Y);

% Cria a janela para os dois gráficos.
figure;

% Representação tridimensional da superfície.
subplot(1, 2, 1);
surf(X, Y, Z);

xlabel('x');
ylabel('y');
zlabel('z');
title('Superfície z = sen(x) + cos(y)');

% Tons mais quentes.
colormap(gca, 'hot');

% Transição suave entre as cores.
shading interp;

colorbar;
view(45, 30);
grid on;


% Representação das curvas de nível.
subplot(1, 2, 2);
contourf(X, Y, Z, 20);

xlabel('x');
ylabel('y');
title('Curvas de nível de z = sen(x) + cos(y)');

colorbar;
grid on;


