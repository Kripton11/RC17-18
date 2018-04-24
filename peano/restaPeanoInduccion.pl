% resta(?X,?Y.?Z)

resta(X, 0, X).
resta(X, s(Y), Z):- resta(X, Y, s(Z)).