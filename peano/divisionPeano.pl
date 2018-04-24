% divide(X, Y, Z, Resto)

divide(X,Y,0,X):-menor(X,Y).
divide(X,Y,s(Z),R):-  resta(X,Y,X2), divide(X2, Y, Z, R).

mult(0,Y,0).
mult(s(X), Y, Z2):- mult(X,Y,Z), suma(Y, Z, Z2).

suma(0,Y,Y).
suma(s(X), Y, s(Z)):- suma(X,Y,Z).


resta(X,Y,Z):- suma(Y,Z,X).

decimal2peano(0, 0).
decimal2peano(X, s(P)):- X2 is X-1, decimal2peano(X2, P).

%menor(X,Y)
menor(0,s(_)).
menor(s(X),s(Y)):-menor(X,Y).

%mayor(X,Y)
mayor(s(_),0).
mayor(s(X),s(Y)):-mayor(X,Y).