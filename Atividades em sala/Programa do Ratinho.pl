homem(arthur).
homem(silvio).
homem(xico).
homem(ricardo).
homem(carlos).
mulher(julia).

pai(arthur, silvio).
pai(julia, carlos).
pai(julia, silvio).
pai(carlos, xico).
pai(silvio, ricardo).


filho(X, Y):- pai(X, Y).

irmao(X, Y):- pai(Z, X), pai(Z, Y).

avo(X, Z):- pai(X, Y), pai(Y, Z).