% ------------------------- M�todo de Bairstow -------------------------- %

% Declarando o vetor dos coeficientes da fun��o:
v1 = [1 -3.5 2.75 2.125 -3.875 1.25];
v2 = [8 15 2 -8 -6 -5 1 1];

% Declarando as aproxima��es iniciais:
r = -1;
s = -1;

% Declarando o erro estimado (%):
erro = 1;

bairstowv1(v1, r, s, erro) % Exemplo 1.
% bairstowv1(v2, r, s, erro) % Exemplo 2.

% ----------------------------------------------------------------------- %