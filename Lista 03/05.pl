pais(brasil, 8, 196).
pais(china, 9, 1330).
pais(eua, 9, 304).
pais(india, 3, 1147).


/*
 *  - Consultas.
 * 
 * 1 - pais(eua, 9, X), write("Habitantes dos EUA: "), write(X).
 * 2 - pais(brasil, X, Y), D is Y / X, write("Densidade demográfica do Brasil: "), write(D).
 * 3 - pais(china, 9, X), pais(india, 3, Y), D is X - Y, write("Diferença populacional: "), write(D).
 * 4 - findall(X, ( pais(X, Y, Z), pais(brasil, J, K), Y > J ),  L), write("Paises maires que o Brasil: "), write(L).
 * 5 - findall(X, (pais(X, Y, Z), pais(india, J, K), K > Z), L), write("Paises menos populosos que a Índia: "), write(L).
 * /