

conectado(g(_,A), Ini,Fin,Car,Cos):-
	member(a(Ini,Fin,_,_),A).
conectado(g(_,A), Ini,Fin,Car,Cos):-
	member(a(Fin,Ini,_,_),A).

visitado(Inicio, Fin, Visitados):-member(arista(Inicio, Fin,_,_), Visitados).
visitado(Inicio, Fin, Visitados):- member(arista(Fin,Inicio,_,_), Visitados).

%camino(Grafo,Inicio,Fin,Visitados,[Ciudades],[Carreteras],Kilometros).
camino(G,Fin,Fin,_,[Fin],[],0).
	
camino(G, Ini, Fin, Visitados, [Ini|Ciudades],[Car|Carreteras],K2):- %en visitados ponemos los vertices
	conectado(G, Ini,TMP, Car, Cos),
	\+ visitado(Ini,TMP, Visitados),
	camino(G, TMP, FIN, [a(Ini,TMP, Car, Cos), a(TMP, Ini, Car, Cos)|Visitados]
		, Ciudades, Carreteras, Kilometros),
	K2 is Kilometros + K.
	

% grafo(G), camino(G, huelva, madrid,[],C,Ca,K).



grafo(g([madrid, cordoba, sevilla, jaen, granada,
huelva, cadiz],
	[a(huelva, sevilla, a49, 94),
	a(sevilla, cadiz,ap4, 125),
	a(sevilla, granada, a92, 256),
	a(granada, jaen,a44, 97),
	a(sevilla, cordoba, a4, 138),
	a(jaen,madrid, a4, 335),
	a(cordoba, madrid, a4, 400)]
)).