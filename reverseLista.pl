% reverse(+List, -ListR).
reverse([],[]).
reverse([Cabeza|Resto],[Reves|Cabeza]):- reverse(Resto, Reves).