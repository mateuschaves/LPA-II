homem(marcos).
homem(fabiano).
homem(silvio).
mulher(ana).
mulher(cassia).

bonita(cassia).
bonito(marcos).
bonito(fabiano).

amavel(silvio).

rico(silvio).
rico(marcos).
rica(ana).

forte(silvio).
forte(ana).
forte(fabiano).
feliz(X):- homem(X), rico(x).

gosta(gosta, cassia).
gosta(homem, Y):- mulher(Y), bonita(Y).
gosta(cassia, Y):- homem(Y), rico(Y), amavel(Y) ; bonito(Y), forte(Y).






