objeto(obj1).
objeto(obj2).
objeto(obj3).
objeto(obj4).
objeto(obj5).

material(obj1, madeira).
material(obj2, madeira).
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

% A
objetos(X):- findall(A , objeto(A) , X).

% B
objetos_descricao(X):- findall(Nome-Material-Tipo-Peso,( objeto(Nome), material(Nome, Material), tipo(Nome, Tipo), peso(Nome, Peso)  ) , X).

% C
tipos_objetos(X):- findall(B, tipo(_, B) , L), sort(L, X).

% D
media_resistencia(X):- material(X, Material), not(fragil(Material)), not(forte(Material)).

% E
mais_leve(X, Y, Z):- peso(X, Peso1), peso(Y, Peso2), Peso1 < Peso2, Z is Peso2 - Peso1.

% F
um_deles_fragil(X, Y, Z):- material(X, Material1), material(Y, Material2), ( ( fragil(Material1), not(fragil(Material2)) ); ( fragil(Material2), not(fragil(Material1)) ) ) ,findall(Material1, fragil(Material1) , J), findall(Material2, fragil(Material2), K), append(K, J, Z).

% G
por_cima_indireto(X, Y):- sobre(X, Z), sobre(Z, Y).

% H
objetos_tipo(X, Y):- findall(K, tipo(K, X), Y).
