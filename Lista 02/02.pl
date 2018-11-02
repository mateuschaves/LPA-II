masculino(abraham).
masculino(clancy).
masculino(herb).
masculino(homer).
masculino(bart).

feminino(mona).
feminino(jacki).
feminino(marge).
feminino(patty).
feminino(selma).
feminino(lisa).
feminino(maggie).
feminino(ling).
     
progenitor(abraham, herb).
progenitor(abraham, homer).
progenitor(mona, homer).
progenitor(clancy, marge).
progenitor(clancy, patty).
progenitor(clancy, selma).
progenitor(jacki, marge).
progenitor(jacki, patty).
progenitor(jacki, selma).
progenitor(selma, ling).
progenitor(homer, bart).
progenitor(homer, lisa).
progenitor(homer, maggie).
progenitor(marge, bart).
progenitor(marge, lisa).
progenitor(marge, maggie).

pai(X, Y) :- progenitor(X, Y), masculino(X).
mae(X, Y) :- progenitor(X, Y), feminino(X).

irma(X, Y) :- progenitor(Z, X), progenitor(Z, Y), feminino(X), X \== Y.
irmao(X, Y) :- progenitor(Z, X), progenitor(Z, Y), masculino(X), X \== Y.

avoH(X, Y) :- progenitor(X, Z), progenitor(Z, Y), masculino(X).
avoM(X, Y) :- progenitor(X, Z), progenitor(Z, Y), feminino(X).

tio(X, Y) :- progenitor(Z, Y), irmao(X, Z).
tia(X, Y) :- progenitor(Z, Y), irma(X, Z).

primo(X, Y) :- progenitor(Z, X), (tio(Z, Y); tia(Z, Y)), masculino(X).
prima(X, Y) :- progenitor(Z, X), (tio(Z, Y); tia(Z, Y)), feminino(X).

filho(X, Y) :- progenitor(Y, X), masculino(X).
filha(X, Y) :- progenitor(Y, X), feminino(X).
