% num_elem(+List, -Int)
num_elem([],0).
num_elem([Cabeza|Resto], NumLista):- num_elem(Resto, NumResto), NumLista is NumResto + 1.