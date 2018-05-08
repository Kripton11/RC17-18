%desde Ini hasta Fin y viceversa
conectado(g(_,A), Ini,Fin):-
	member(a(Ini,Fin),A).
conectado(g(_,A), Ini,Fin):-
	member(a(Fin,Ini),A).

camino(G,Ini,Fin,Visitados,[a(Ini,Fin)]):- 
	conectado(G, Ini, Fin),
	\+ member(a(Ini,Fin), Visitados).
	
camino(g(_,A), Ini, Fin, Visitados, [a(Ini,TMP)|Camino]):- %en visitados ponemos los vertices
	conectado(g(_,A), Ini,TMP),
	\+ member(a(Ini,TMP), Visitados),
	camino(g(_,A), TMP, FIN, [a(Ini,TMP), a(TMP, Ini)|Visitados], Camino).
	

grafo2(g([a,b,c,d,e], [a(a,b), a(a,c), a(b,c), a(d,b), a(d,c), a(d,e), a(e,b), a(e,c)])).