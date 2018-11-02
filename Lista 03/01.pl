homem(ivo).
homem(gil).
homem(rui).
homem(noe).
homem(rai).
homem(ary).

mulher(ana).
mulher(bia).
mulher(pat).
mulher(eva).
mulher(gal).
mulher(clo).
mulher(lia).

gerou(ana, ary).
gerou(ana, eva).

gerou(ivo, ana).
gerou(ivo, eva).

gerou(bia, rui).
gerou(bia, rai).

gerou(gil, rui).
gerou(gil, rai).

gerou(pat, noe).

gerou(ary, noe).

gerou(eva, clo).

gerou(rui, clo).

gerou(rai, lia).

gerou(gal, lia).

casal(X, Y):- gerou(Y, Z), gerou(X, Z).

filho(X, Y):- homem(X), gerou(Y, X).
filha(X, Y):- mulher(X), gerou(Y, X).

mae(X, Y):- mulher(X), gerou(X, Y).
pai(X, Y):- homem(X), gerou(X, Y).

irmao(X, Y):- homem(X),  gerou(Z, X), gerou(Z, Y).
irma(X, Y):- mulher(X), gerou(Z, X), gerou(Z, Y).

tio(X, Y):- homem(X), ( irmao(Z, X) ; irma(Z, X)  ), gerou(Z, Y).
tia(X, Y):- mulher(X), ( irmao(Z, X); irma(Z, X)  ), gerou(Z, Y).

avô(X, Y):- homem(X), gerou(X, Z), gerou(Z, Y). 
avó(X, Y):- mulher(X), gerou(X, Z), gerou(Z, Y).

primo(X, Y):- gerou(Z, X), ( tio(Z, Y); tia(Z, Y)  ).
prima(X, Y):- gerou(Z, X), ( tio(Z, Y); tia(Z, Y)  ).













    
