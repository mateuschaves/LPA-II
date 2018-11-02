masculino(jamespotter).
masculino(jamespotterFilho).
masculino(harrypotter).
masculino(dracomalfoy).
masculino(luciusmalfoy).
masculino(albuspotter).
masculino(scorpiusmalfoy).
masculino(zackmalfoy).
masculino(chrystophermalfoy).
masculino(leomalfoy).
masculino(alexandremalfoy).

feminino(lilypotter).
feminino(ginnypotter).
feminino(lilymalfoy).
feminino(narcissapotter).
feminino(astoriapotter).
     
progenitor(lilypotter, harrypotter).
progenitor(jamespotter, harrypotter).

progenitor(harrypotter, jamespotterFilho).
progenitor(harrypotter, albuspotter).
progenitor(harrypotter, lilymalfoy).
progenitor(ginnypotter, jamespotterFilho).
progenitor(ginnypotter, albuspotter).
progenitor(ginnypotter, lilymalfoy).

progenitor(lilymalfoy, zackmalfoy).
progenitor(lilymalfoy, chrystophermalfoy).
progenitor(lilymalfoy, leomalfoy).
progenitor(lilymalfoy, alexandremalfoy).
progenitor(scorpiusmalfoy, zackmalfoy).
progenitor(scorpiusmalfoy, chrystophermalfoy).
progenitor(scorpiusmalfoy, leomalfoy).
progenitor(scorpiusmalfoy, alexandremalfoy).

progenitor(luciusmalfoy, dracomalfoy).
progenitor(narcissapotter, dracomalfoy).
progenitor(dracomalfoy, scorpiusmalfoy).
progenitor(astoriapotter, scorpiusmalfoy).

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