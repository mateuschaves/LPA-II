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
mulher(eu).

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
irmaos(carlos, maria).

pai(carlos, teresa).
pai(daniel, americo).
pai(daniel, paulo).
pai(joaquim, daniel).

mae(maria, daniel).
mae(barbara, joana).
mae(eu, joaquim).

casados(filipe, carla).
casados(americo,teresa).
casados(joaquim, maria).

/*A - Escreva o predicado pessoas(Lista) que calcula a Lista de todas as pessoas existentes na base de factos. */
pessoas(X):- findall(A, homem(A), H), findall(B, mulher(B), M), append(H, M, X).

/*B - Escreva o predicado avof(Mul, Pess) em que Mul seja av� de Pess. */
avof(X, Y):- mae(X, Z), (pai(Z, Y); mae(Z, Y)), mulher(X).

/*C - Escreva o predicado avom(Hom, Pess) em que Hom seja av� de Pess. */
avom(X, Y):- pai(X, Z), (pai(Z, Y); mae(Z, Y)), homem(X).

/*D - Escreva o predicado bisavom(Hom, Pess) que suceda se Hom for bisav� de Pess.*/
bisavom(X, Y):- mae(X, Z),(avof(Z, Y); avom(Z, Y)), mulher(X).

/*E - Escreva os predicados tio(Hom, Pess) e tia(Hom, Pess) que sucedem se Hom (Mul) for tio/tia de Pess. */
tio(X, Y):- irmaos(X, Z),(pai(Z, Y); mae(Z, Y)), homem(X).
tia(X, Y):- irmaos(X, Z),(pai(Z, Y); mae(Z, Y)), mulher(X).

/*F - Escreva os predicados neto(Hom, Pess) e neta(Hom, Pess) que sucedem se Hom (Mul) for neto/neta de
Pess. */
neto(X, Y):- avof(Y, X); avom(Y, X), homem(X).
neta(X, Y):- avof(Y, X); avom(Y, X), mulher(X).

/*I - Escreva o predicado maior_de_idade(Pess) que sucede se Pess for maior de idade. */ 
maior_de_idade(X):- idade(X, I), I > 18.

/*J - Escreva o predicado mais_velho(Pess) que retorna a pessoa mais velha que consta na base de factos. */
mais_velho(X):- findall(B, idade(A, B) , L), max_list(L, H), idade(X, H).



















