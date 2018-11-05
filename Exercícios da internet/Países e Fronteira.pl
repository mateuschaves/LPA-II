continente(asia).
continente(america).
continente(europa).

pais(portugal, europa, 10).
pais(espanha, europa, 48).
pais(franca, europa, 52).
pais(belgica, europa, 9).
pais(alemanha, europa, 82).
pais(holanda, europa, 15).
pais(eua, america, 235).
pais(brasil, america, 155).
pais(china, asia, 1100).
pais(mongolia, asia, 3).

fronteira(portugal, espanha).
fronteira(franca, espanha).
fronteira(franca,belgica).
fronteira(belgica, alemanha).
fronteira(belgica, holanda).
fronteira(alemanha, holanda).
fronteira(alemanha, franca).
fronteira(china, mongolia).

/* A - Escreva o predicado junto(P1,P2) que sucede se o pais P1 faz fronteira com P2. */
junto(X, Y):- fronteira(X, Y); fronteira(Y, X).

/* B - Escreva o predicado paises_continente(Lista, Cont) que calcula a Lista de países existentes num dado
continente. */
paises_continente(Lista, Cont):- findall(A, (pais(A, B, _), B == Cont ), Lista).

/*C - Escreva o predicado paises_grandes(Lista, Cont) que calcula a Lista de países com mais de 100
milhões de habitantes de um dado continente. */
paises_grandes(Lista, Cont):- findall(A, (pais(A, Cont, B), B > 100), Lista).

/*D - Escreva o predicado dois_mais_pop(P1, P2), que calcula quais os dois países com mais habitantes. */

% Seleciona os dois primeiros elementos de uma lista.
two([J, K | _], A, B):- A is J, B is K.

dois_mais_pop(X, Y):- findall(B, (pais(A, _, B)), L), sort(L, M), reverse(M, J), two(J, Primeiro, Segundo), findall(A, (pais(A, _, B), B =:= Primeiro ), X), findall(A, (pais(A, _, B), B =:= Segundo ), Y).

/*E - Escreva o predicado descricao(Lista), que retorne uma lista com a descrição de todos os países,
incluindo o seu nome, continente e população ( [portugal*europa*10, …,china*asia*1000] ). */
descricao(X):- findall(A * B * C, (pais(A, B, C)), X).
