% suma Peano

suma(0,Y,Y).
suma(s(X), Y, s(Z)):- suma(X,Y,Z).

% resta (?X,?Y,?Z)
% es cierto cuando Z simplifica con la resta X-Y

resta(X,Y,Z):- suma(Y,Z,X).