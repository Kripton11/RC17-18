% resta(?X,?Y.?Z)

resta(X, 0, X).
resta(X, s(Y), s(Z)):- resta(X, Y, Z).