objecto(obj1).
objecto(obj2).
objecto(obj3).
objecto(obj4).
objecto(obj5).

material(obj1,madeira).
material(obj2,madeira).
material(obj3, vidro).
material(obj4, vidro).
material(obj5, ferro).

tipo(obj1, mesa).
tipo(obj2, cadeira).
tipo(obj3, mesa).
tipo(obj4, jarra).
tipo(obj5, matraca).

peso(obj1, 10.5).
peso(obj2, 1.5).
peso(obj3, 1.6).
peso(obj4, 0.5).
peso(obj5, 1.8). 

fragil(vidro).
forte(ferro).

sobre(obj4, obj1).
sobre(obj3, obj1).
sobre(obj5, obj3).

% A - Escreva o predicado debaixo(O1,O2) que sucede se o objecto O1 está debaixo (directamente) do objecto O2. 
debaixo(X, Y):- sobre(Y, X).

% B -Escreva o predica objectos(Lista) que calcula a Lista de objectos existentes no mundo (Lista=[obj1,obj2,obj3,obj4,obj5]).
objetos(X):- findall(A, objecto(A), X).

/*C - Escreva o predicado objectos_descricao(Lista), que retorne uma lista com a descrição de todos os
objectos, incluindo o seu nome, material, tipo e peso ( [obj1-madeira-mesa-10.5, obj2-madeiracadeira-1.5,
…, obj5-ferro-matraca-1.8] )*/
objetos_descricao(X):- findall(A-B-C-D, (objecto(A), material(A, B), tipo(A, C), peso(A, D)) , X).
