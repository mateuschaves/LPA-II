homem(americo).
homem(daniel).
homem(paulo).
homem(carlos).
homem(joaquim).
homem(filipe).

mulher(teresa).
mulher(sonia).
mulher(ana).
mulher(carla).
mulher(barbara).
mulher(maria).

idade(americo, 18).
idade(paulo, 25).
idade(carlos, 37).
idade(filipe, 32).
idade(teresa, 18).
idade(sonia, 28).
idade(joana, 17).
idade(carla, 26).
idade(barbara, 51).
idade(daniel, 60).
idade(joaquim, 80).
idade(maria, 79).

irmaos(americo, paulo).
irmaos(carlos, sonia).

pai(carlos, teresa).
pai(daniel, americo).
pai(daniel, paulo).
pai(joaquim, daniel).

mae(maria, daniel).
mae(barbara, joana).

casados(filipe, carla).
casados(americo,teresa).
casados(joaquim, maria).

/*A - Escreva o predicado pessoas(Lista) que calcula a Lista de todas as pessoas existentes na base de factos. */
pessoas(X):- findall(A, homem(A), H), findall(B, mulher(B), M), append(H, M, X).

/*B - Escreva o predicado avof(Mul, Pess) em que Mul seja avó de Pess. */
avof(X, Y):- mae(X, Z), (pai(Z, Y); mae(Z, Y)), mulher(X).

/*C - Escreva o predicado avom(Hom, Pess) em que Hom seja avô de Pess. */
avom(X, Y):- pai(X, Z), (pai(Z, Y); mae(Z, Y)), homem(X).
