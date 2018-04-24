% Es cierto cuando R unifica con el recorrido en inorden del árbol A



% PARA EJECUTAR "arbol1(A), inorden(A,R)."

inorden(nil, []).
inorden(a(E,HI,HD),R):-
	inorden(HI,RI),
	inorden(HD,RD),
	append(RI,[E|RD],R).
	

preorden(nil, []).
preorden(a(E,HI,HD),R):-
	preorden(HI,RI),
	preorden(HD,RD),
	append([E|RI], RD, R).

postorden(nil, []).
postorden(a(E,HI,HD),R):-
	postorden(HI,RI),
	postorden(HD,RD),
	append([RI, RD, [E]],R).

anchura(a(E, Lista_hijos), [E,R]):-
	anchural(Lista_hijos, R).

anchural([],[]).	
anchural([a(E, L)|Resto],[E|R2]):-
	append(Resto, L, R),
	anchural(R, R2).



arbol1(
      a(1, a(2,a(4,nil,nil),nil), a(3,nil,nil))
      ).

arbol2(
      a('+', a(1,a(d,nil,nil),nil), a(c,nil,nil))
      ).

arbol3(
      a(a, a(b,a(d,nil,nil),nil), a(c,nil,a(e,nil,nil)))
      ). 