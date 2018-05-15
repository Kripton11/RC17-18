%camino(+G, +Ini, +Fin, +Visitados, -Caminos).
camino(_,Ini,Ini,_,[Ini]).	%camino(Ini,Ini,_,[]). si en Caminos devolvemos las aristas
camino(g(_,A), Ini, Fin, [Ini], [Ini|Camino]):- %en visitados ponemos los vertices
	member(a(Ini,TMP), A),
	\+ member(TMP, Visitados),
	camino(g(_,A), TMP, FIN, [TMP|Visitados], Camino).
	
	
grafo(g([a,b,c,d], [a(a,b), a(b,c), a(c,d), a(d,b)])).

% Variantes:
%     
%  1. Grafo dirigido
%    1.1 Visitados como lista de vértices
%    1.2 Visitados como lista de aristas
%    1.3 Camino como lista de vértices 
%    1.4 Camino como lista de aristas
%
%  2. Grafo no dirigido
%    2.1 Visitados como lista de vértices
%    2.2 Visitados como lista de aristas
%    2.3 Camino como lista de vértices
%    2.4 Camino como lista de aristas 