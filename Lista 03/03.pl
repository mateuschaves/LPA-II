gato(tom).

rato(jerry).

passaro(piupiu).

minhoca(moli).

gosta(tom, jerry).
gosta(tom, piupiu).

gosta(piupiu, moli).

come(X, Y):- animais(X), gosta(X, Y).

animais(X):- gato(X); rato(X); passaro(X); minhoca(X).