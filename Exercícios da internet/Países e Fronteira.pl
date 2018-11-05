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

