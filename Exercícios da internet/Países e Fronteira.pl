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

/*F - Escreva o predicado nao_sou_o_maior_do_continente(P1) que sucede se P1 não é o maior país do seu
continente.*/
nao_sou_o_maior_do_continente(X):- pais(X, C, P), findall(K, (pais(_, C, K)), T), sort(T, O), reverse(O, M), two(M, V, _), not(V =:= P).

/*G - Escreve o predicado chego_la_facil(P1, P2) que sucede se é possível chegar de P1 a P2, directamente
ou atravessando unicamente um outro país. */
chego_la_facil(X, Y):- fronteira(X, Y); fronteira(Z, X), fronteira(Z, Y); fronteira(X, Z), fronteira(Y, Z).

/*M - Escreva o predicado soma_populacao_vizinhos(P1, Soma) que calcula a soma da população dos
vizinhos de P1. */

% Verifica se X é vizinho de Y.
vizinho(X, Y):- fronteira(X, Y); fronteira(Y, X).

% Soma todos os elementos de uma lista.
sum([], 0).
sum([A | B], S):- sum(B, SN), S is SN + A.

soma_populacao_vizinhos(X, Y):- findall(C, (pais(A, _, C), vizinho(A, X)), P), sum(P, Y).

