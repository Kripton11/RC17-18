
suma(0,Y,Y).
suma(s(X), Y, s(Z)):- suma(X,Y,Z).

mult(0,Y,0).
mult(s(X), Y, Z2):- mult(X,Y,Z), suma(Y, Z, Z2).

peano2dec(0, 0).
peano2dec(s(P),X2):-  peano2dec(P, X), X2 is X+1.

decimal2peano(0, 0).
decimal2peano(X, s(P)):- X2 is X-1, decimal2peano(X2, P).