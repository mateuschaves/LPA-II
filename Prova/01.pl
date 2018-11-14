autor(eca_queiroz).
%autor(mateus).

nacionalidade(eca_queiroz, portugues).
%nacionalidade(mateus, russo).

livro(os_maias).
livro(calculo1).

tipo(os_maias, ficcao).
tipo(calculo1, exatas).

escreveu(eca_queiroz, os_maias).
escreveu(eca_queiroz, calculo1).

% A
quem_escreveu(X, Y):- autor(X), livro(Y), escreveu(X, Y).

% B
nacionalidade_tipo(X, Y, Z):- findall(K , ( nacionalidade(K, X), autor(K), escreveu(K, J), livro(J), tipo(J, Y) ), Z).

% C
autores_diversos(X, Y):- findall(J, (tipo(K, X), escreveu(J, K), escreveu(J, M), tipo(M, L), L \= X) , Y).

