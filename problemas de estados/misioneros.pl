/* estado(Canibales_izq, Misioneros_izq, Pos_barca) */
inicial(estado(3,3,izq)).
final(estado(0,0,dch)).
/* pasar(?Num_misioneros, ?Num_canibales, ?Lugar)
es cierto cuando Num_misioneros y Num_canibales unifica con una combinación válida de misioneros y misioneros válida según la especificación del problema y cuando lugar unifica con ‘izq’ o ‘dch’. */
pasar(1,0,izq).
pasar(1,0,dch).
pasar(1,1,izq).
pasar(1,1,dch).
pasar(0,1,izq).
pasar(0,1,dch).
pasar(2,0,izq).
pasar(2,0,dch).
pasar(0,2,izq).
pasar(0,2,dch).

/* estados validos */
valido(estado(3,3,_)).
valido(estado(3,2,_)).
valido(estado(3,1,_)).
valido(estado(3,0,_)).
valido(estado(2,2,_)).
valido(estado(1,1,_)).
valido(estado(0,3,_)).
valido(estado(0,2,_)).
valido(estado(0,1,_)).
valido(estado(0,0,_)).

/* mov(?Movimiento, ?Estado_anterior, ?Estado_posterior)
es cierto cuando Movimiento unifica con un Movimiento válido, Estado_anterior unifica con un estado válido y Estado_posterior unifica con el estado resultante de aplicar el movimiento “Movimiento” al estado “Estado_anterior” */
mov(pasar(M, C, izq), estado(MI,CI, dch), estado(MD, CD, izq)):-
	pasar(M,C,izq),
	NT is M + C, NT =< 2, NT >= 1,
	M =< MI, C =< CI,
	MD is MI + M, CD is CI + C.
	%,valido(estado(MD, CD, izq)).

mov(pasar(M, C, dch), estado(MI, CI, izq), estado(MD, CD, dch)):-
	pasar(M,C,dch),
	NT is M + C, NT =< 2, NT >= 1,
	M =< MI, C =< CI,
	MD is MI - M, CD is CI - C.
	%,valido(estado(MD, CD, dch)).
/* camino(+Estado_inicial, +Estado_final, +Visitados, -Camino)
es cierto cuando Estado_inicial y Estado_final unifican con estados válido, Visitados unifica con una lista
*/
camino(Inicio, Inicio, _, [],[Inicio]).
camino(Inicio, Fin, Visitados, [Mov|Camino], [Inicio|CaminoE]):-
	length(Visitados, L), L < 10,
	mov(Mov, Inicio, Int),
	\+ member(Int, Visitados),
	camino(Int, Fin, [Int|Visitados], Camino, CaminoE).
	
% camino(estado(3,3,izq), estado(0,0,_),[], Salida, Camino), write(Salida), length(Salida, L).