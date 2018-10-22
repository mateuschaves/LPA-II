homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).
mulher(bia).
mulher(ana).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

progenitor(ana, eva).
progenitor(ivo, eva).
progenitor(bia, rai).
progenitor(bia, clo).
progenitor(bia, ary).
progenitor(gil, rai).
progenitor(gil, clo).
progenitor(gil, ary).
progenitor(eva, noe).
progenitor(rai, noe).
progenitor(ary, gal).
progenitor(lia, gal).


filho(X, Y):- homem(X), progenitor(Y, X).
filha(X, Y):- mulher(X), progenitor(Y, X).

mae(X, Y):- mulher(X), progenitor(X, Y).
pai(X, Y):- homem(X), progenitor(X, Y).

avó(X, Z):- mulher(X), progenitor(X, Y), progenitor(Y, Z).
avô(X, Z):- homem(X), progenitor(X, Y), progenitor(Y, Z).

irmão(X, Y):- homem(X), progenitor(Z, Y), progenitor(Z, X).
irmã(X, Y):- mulher(X), progenitor(Z, Y), progenitor(Z, X).

tia(X, Y):- mulher(X), irmã(X, Z), progenitor(Z, Y).
tio(X, Y):- homem(X), irmão(X, Z), progenitor(Z, Y).


