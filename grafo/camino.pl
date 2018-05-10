%camino(+G, +Ini, +Fin, +Visitados, -Caminos).
camino(_,Ini,Ini,_,[Ini]).	%camino(Ini,Ini,_,[]). si en Caminos devolvemos las aristas
camino(g(_,A), Ini, Fin, [Ini], [Ini|Camino]):- %en visitados ponemos los vertices
	member(a(Ini,TMP), A),
	\+ member(TMP, Visitados),
	camino(g(_,A), TMP, FIN, [TMP|Visitados], Camino).
	
	
grafo(g([a,b,c,d], [a(a,b), a(b,c), a(c,d), a(d,b)])).

