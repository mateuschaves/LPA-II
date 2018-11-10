passaro(tweety).
peixe(goldie).
minhoca(molie).
gato(silvester).

gosta(passaro, minhoca).
gosta(tweety, molie).
gosta(gato, peixe).
gosta(silvester, goldie).
gosta(gato, passaros).
gosta(silvester, tweety).

amigos(X, Y):- gosta(X, Y), gosta(Y, X).

come(X):- gosta(silvester, X).
