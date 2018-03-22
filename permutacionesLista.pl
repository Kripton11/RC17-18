% permutacion(+L1, -L2).
% L1 unifica con una lista que contiene los elementos de L2 en orden distinto.
% Por unificación debo poner todas las posibles ordenaciones.
permutacion([], []).
permutacion(R2, [Cabeza|Resto]):- permutacion(R,Resto), insertar(Cabeza, R, R2).

%insertar(+E, +Lista, -R).
insertar(E, Lista, [E|Lista]).
insertar(E, [Cabeza|Resto], [Cabeza|Lista]):- insertar(E, Resto, Lista).