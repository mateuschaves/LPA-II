/*
Eu quis te conhecer, mas tenho que aceitar
Caberá ao nosso amor o eterno ou o não dá
Pode ser cruel a eternidade
Eu ando em frente por sentir vontade

Janta - Marcelo Camelo
*/

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

/*B - Escreva o predicado avof(Mul, Pess) em que Mul seja avó de Pess. */
avof(X, Y):- mae(X, Z), (pai(Z, Y); mae(Z, Y)), mulher(X).

/*C - Escreva o predicado avom(Hom, Pess) em que Hom seja avô de Pess. */
avom(X, Y):- pai(X, Z), (pai(Z, Y); mae(Z, Y)), homem(X).

/*D - Escreva o predicado bisavom(Hom, Pess) que suceda se Hom for bisavô de Pess.*/
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

/*M - Escreva o predicado numero_irmaos(Pess, N) que sucede se N for o número de irmãos de Pess. */

sum([], 0).
sum([A | B], S):- sum(B, Sn), S is Sn + A.

numero_irmaos(X, N):- findall(1 , ( (irmaos(Y, X), irmaos(X, Y)); ( irmaos(Z, X), irmaos(Z, Y) ); (irmaos(X, Z), irmaos(Y, Z)) ), L), sum(L, S), S == N.

/*N - Escreva o predicado lista_dos_mais_velhos_que_eu(Pess, Lista) que retorne uma lista com todas as pessoas
mais velhas que Pess. */
lista_dos_mais_velhos_que_eu(X, Y):- idade(X, K), findall(A, ( idade(A, B), B > K ), Y).

/*O - Escreva o predicado avos_e_netos(Lista) que retorne uma lista com todos os avos (homens ou mulheres e
respectivos netos (Lista = [joaquim-daniel, maria-daniel]).*/
avos_e_netos(X):- findall(A-B, avof(A, B), K), findall(A-B, avom(A, B), J), append(K, J, X).

















