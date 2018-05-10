%todos los ciclos de un grafo
% ciclos(+G, -C).

ciclos(G, C):-
	camino(G, Ini, Ini, [], C).
	
lista_ciclos(G,L):-bagof(C,camino(G,Ini,Ini,[],C),L).

conectado(g(_,A), Ini,Fin):-
	member(a(Ini,Fin),A).
conectado(g(_,A), Ini,Fin):-
	member(a(Fin,Ini),A).

camino(G,Ini,Fin,Visitados,[a(Ini,Fin)]):- 
	conectado(G, Ini, Fin),
	\+ member(a(Ini,Fin), Visitados).
	
camino(G, Ini, Fin, Visitados, [a(Ini,TMP)|Camino]):- %en visitados ponemos los vertices
	conectado(G, Ini,TMP),
	\+ member(a(Ini,TMP), Visitados),
	camino(G, TMP, FIN, [a(Ini,TMP), a(TMP, Ini)|Visitados], Camino).


% grafo(G), ciclos(G,C).



grafo(g([a,b,c,d], [a(a,b), a(b,c), a(c,d), a(d,b)])).
grafo2(g([a,b,c,d,e], [a(a,b), a(a,c), a(b,c), a(d,b), a(d,c), a(d,e), a(e,b), a(e,c)])).


%Variantes:

%1. Grafo dirigido
%	1.1 Visitados como lista de vertices
%	1.2 Visitados como lista de aristas
%	1.3 Camino como lista de vertices
%	1.4 Camino como lista de aristas

%2. Grafo no dirigido
%	2.1 Visitados como lista de vertices
%	2.2 Visitados como lista de aristas
%	2.3 Camino como lista de vertices
%	2.4 Camino como lista de aristas