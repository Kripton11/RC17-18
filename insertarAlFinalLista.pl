%insertar_final(+E, +Lista, -R).
insertar_final(E, [], [E]).
insertar_final(E, [Cabeza|Resto], [Cabeza|Lista]):- insertar_final(E, Resto, Lista).