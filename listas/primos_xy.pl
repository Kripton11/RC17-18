%--------------------------------------------------
% lista_divisores(+X,+Y,-ListaR).
%    es cierto cuando ListaR unifica con una lista
%    que contiene a los números cuyo resto dee la 
%    división entera de X entre Z es igual a 0
%	 para valores de Z entre 1 e Y.
%--------------------------------------------------

lista_divisores(_,1,[1]).
lista_divisores(X,Y,[Y|R]):- Y>0, Y2 is Y-1,  0 is X mod Y, lista_divisores(X,Y2,R).
lista_divisores(X,Y,R):- Y>0, Y2 is Y-1, Resto is X mod Y, Resto \=0, lista_divisores(X,Y2,R).


%---------------------------------------------------
% primo(+X)
%	 es cierto si X unifica con un número primo.
%---------------------------------------------------

primo(X):- lista_divisores(X,X,[X,1]).

%---------------------------------------------------
% primosEntrexy(+X, +Y, -ListaR)
% 	 es cierto cuando ListaR unifica con una lista
%	 que contiene a los primos que van desde X hasta
%	 Y ambos incluidos en orden ascendente.
%---------------------------------------------------

primosEntrexy(X,Y,[]):- X>Y.
primosEntrexy(X,Y,[X|R]):-  primo(X), X2 is X+1, primosEntrexy(X2,Y,R).
primosEntrexy(X,Y,R):-  \+primo(X), X2 is X+1, primosEntrexy(X2,Y,R).
