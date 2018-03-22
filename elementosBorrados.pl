% borrar_elem(+E, +Lista, -ListaR).
borrar_elem(_,[],[]).
borrar_elem(E, [E|Resto], Re):- borrar_elem(E, Resto, Re).
borrar_elem(E, [Cabeza|Resto], [Cabeza|Re]):- E\=Cabeza ,borrar_elem(E, Resto, Re).