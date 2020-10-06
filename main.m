% ------------------------- Método de Bairstow -------------------------- %

% Declarando o vetor dos coeficientes da função:
v1 = [1 -3.5 2.75 2.125 -3.875 1.25];
v2 = [8 15 2 -8 -6 -5 1 1];

% Declarando as aproximações iniciais:
r = -1;
s = -1;

% Declarando o erro estimado (%):
erro = 1;

bairstowv1(v1, r, s, erro) % Exemplo 1.
% bairstowv1(v2, r, s, erro) % Exemplo 2.

% ----------------------------------------------------------------------- %