% elemento_enesimo(+Pos, +Lista, -Elem)
elemento_enesimo(0, [Cabeza|Resto], Cabeza).
elemento_enesimo(Pos, [Cabeza|Resto], E):- NewPos is Pos - 1, elemento_enesimo(NewPos, Resto, E).