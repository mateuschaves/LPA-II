:- discontiguous tamanho/2.

medida(cozinha, 2.0, 3.0).
medida(sala, 4.0, 5.5).
medida(quarto, 3.0, 3.5).
medida(banheiro, 1.5, 2.0).

tamanho(C, A):- medida(C, X, Y), A is X*Y.

/*
 *  01 - tamanho(cozinha, X).
 *  02 - findall(X, (tamanho(X, Y), tamanho(cozinha, Z), Y > Z), T).
 *  03 - findall(X, (tamanho(X, Y), tamanho(cozinha, Z), Y < Z), T).
 *  04 - tamanho(cozinha, X), tamanho(banheiro, Y), X \== 2*Y.
 *  05 - findall(Y, (tamanho(X, Y), tamanho(sala, Z)), T), tamanho(sala, S), max_list(T, H), S =:= H.
 * 
 * /
