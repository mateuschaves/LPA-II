homem(joao).
homem(jose).
homem(mario).
homem(carlos).
mulher(ana).
mulher(helena).
mulher(joana).
mulher(maria).

progenitor(jose, joao).
progenitor(jose, ana).
progenitor(maria, joao).
progenitor(maria, ana).
progenitor(ana, helena).
progenitor(ana, joana).
progenitor(joao, mario).
progenitor(helena, carlos).
progenitor(mario, carlos).


filho(X, Y):- homem(X), progenitor(Y, X).
filha(X, Y):- mulher(X), progenitor(Y, X).

pai(X, Y):- homem(X), progenitor(X, Y).
mae(X, Y):- mulher(x), progenitor(X, Y).

irm�o(X, Y):- homem(X), progenitor(Z, Y), progenitor(Z, X).
irm�(X, Y):- mulher(X), progenitor(Z, Y), progenitor(Z, X).

av�(X, Y):- homem(X), ( filho(Z, X); filha(Z, X) ), progenitor(Z, Y).
av�(X, Y):- mulher(X), (  filho(Z, X); filha(Z, X) ), progenitor(Z, Y).

tio(X, Y):- homem(X), irm�o(Z, X), progenitor(Z, Y).
tia(X, Y):- mulher(X), irm�(Z, X), progenitor(Z, Y).

primo(X, Y) :- progenitor(Z, X), (tio(Z, Y); tia(Z, Y)), homem(X).
prima(X, Y) :- progenitor(Z, X), (tio(Z, Y); tia(Z, Y)), mulher(X).







