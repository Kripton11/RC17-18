%--------------------------------------------------
% divide(+Elem, +Lista, -Menores, -Mayores)
%
%   es cierto cuando Menores unifica con una lista
%   que contiene los elemenentos de Lista que son
%   menores o iguales que Elem y Mayores unifica
%   con una lista que contiene los elementos de
%   Lista que son mayores que Elem.
%--------------------------------------------------
divide(_, [], [],[]).
divide(Elem, [Cabeza| Resto],[Cabeza| Menores],Mayores):-Cabeza<Elem, divide(Elem, Resto, Menores, Mayores).
divide(Elem, [Cabeza| Resto],Menores,[Cabeza|Mayores]):-Cabeza>=Elem, divide(Elem, Resto, Menores, Mayores).

%--------------------------------------------------
% ordena_quick(+Lista, -ListaR)
%
%   es cierto cuando ListaR unifica con una lista
%   que contiene los elemenentos de Lista ordenados
%   de menor a menor
%--------------------------------------------------
ordena_quick([],[]).
ordena_quick([E|Resto], ListaR):-
	divide(E, Resto, Menores, Mayores), ordena_quick(Menores, MenoresR), 
	ordena_quick(Mayores,MayoresR), append(MenoresR, [E|MayoresR], ListaR).