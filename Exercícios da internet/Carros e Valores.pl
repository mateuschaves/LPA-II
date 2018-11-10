/*Crie uma regra pode_vender onde o primeiro argumento é a pessoa, o segundo o carro e o
terceiro é o ano actual (não especificar “homem” ou “carro” nas regras), onde a pessoa só pode
vender o carro se o carro for comprado por ela nos últimos 10 anos e se seu valor for menor do que
10000 Euros.*/

comprou(joao, honda).
comprou(joao, uno).

ano(honda, 1997).
ano(uno, 1998).

valor(honda, 9000).
valor(uno, 7000). 

pode_vender(Pessoa, Carro, Ano):- ano(Carro, X), D is Ano - X, D < 10, comprou(Pessoa, Carro), valor(Carro, V), V < 10000.
