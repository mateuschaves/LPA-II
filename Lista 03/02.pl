mora_em(ana, santana).
mora_em(rai, santana).

mora_em(bia, tatuape).

mora_em(edu, mandaqui).

mora_em(gil, penha).

mora_em(eva, vila_carrao).

fica_na_zona(santana, zona_norte).
fica_na_zona(mandaqui, zona_norte).

fica_na_zona(tatuape, zona_leste).
fica_na_zona(penha, zona_leste).
fica_na_zona(vila_carrao, zona_leste).

tem_carro(ana).
tem_carro(gil).

pode_dar_carona_a(X, Y):- tem_carro(X), mora_em(X, Z), mora_em(Y, K), fica_na_zona(K, R), fica_na_zona(Z, T), R == T.