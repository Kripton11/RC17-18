% elimina_cada_n(+Lista, +N, -R).
%    es cierto cuando R unifica con una lista de la
%    siguiente forma:
%    elimina_cada_n([1,2,3,4,5,6,7], 3, R).
%    R = [1,2,4,5,7]
elimina_cada_n([],_,[]).
elimina_cada_n([Cab|Resto], N, [Cab|R]):-
	elimina_cada_n(Resto, N, R), X is mod(Cab,N), X \= 0.
elimina_cada_n([Cab|Resto], N, R):-
	elimina_cada_n(Resto, N, R), X is mod(Cab,N), X == 0.