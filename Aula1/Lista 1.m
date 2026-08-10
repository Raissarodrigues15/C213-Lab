% Lista de Exercicios - Aula 1 MATLAB

clc;
clear;

%% 1. Operacoes basicas
a = 12;
b = 5;

soma = a + b
subtracao = a - b
multiplicacao = a * b
divisao = a / b
potencia = a^b

%% 2. Raiz, arredondamento e resto
raiz = sqrt(144)
arredondamento = round(7.6)
arredondamento_cima = ceil(4.01)
resto = mod(250, 17)

%% 3. MDC e MMC
mdc = gcd(24, 36)
mmc = lcm(12, 18)

%% 4. Exponencial e trigonometria
exponencial = exp(2)

angulo30 = deg2rad(30)
angulo60 = deg2rad(60)
angulo45 = deg2rad(45)

seno30 = sin(angulo30)
cosseno60 = cos(angulo60)
tangente45 = tan(angulo45)

%% 5. Criando vetores
v1 = 1:10
v2 = 10:-1:1
v3 = 0:2:20
v4 = linspace(0, 100, 5)

%% 6. Acessando posicoes de um vetor
v = [10 20 30 40];

primeiro = v(1)
ultimo = v(end)
posicoes_2_ate_4 = v(2:4)
posicoes_1_3 = v([1 3])

%% 7. Informacoes sobre um vetor
v = [4 8 15 16 23 42];

quantidade_elementos = length(v)
dimensoes = size(v)
soma_elementos = sum(v)
media_elementos = mean(v)
maior_valor = max(v)
menor_valor = min(v)

%% 8. Vetor linha e vetor coluna
v = [5 10 15 20 25];

dimensoes_antes = size(v)

v_coluna = v'

dimensoes_depois = size(v_coluna)

%% 9. Criando e acessando uma matriz
A = [3 6 9;
    2 4 8;
    1 5 7];

elemento_linha2_coluna3 = A(2,3)
primeira_linha = A(1,:)
segunda_coluna = A(:,2)
dimensoes_A = size(A)

%% 10. Operacoes com matrizes
A = [1 2;
    3 4];

B = [2 0;
    1 5];

soma_matrizes = A + B
multiplicacao_matrizes = A * B
transposta_A = A'
