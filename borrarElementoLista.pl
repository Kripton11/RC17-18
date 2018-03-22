% borrar_elem(+E, +Lista, -ListaR).
borrar_elem(E, [E|Resto], Resto).
borrar_elem(E, [Cabeza|Resto], [Cabeza|Re]):- borrar_elem(E, Resto, Re).