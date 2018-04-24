% decimal2peano(+Dec, ?peano)
% es cierto cuando Peano unifica
% con el número natural
% equivalente al decimal Dec
% ejemplo:
% dec2peano(3, P)
% P=s(s(s(0)))
decimal2peano(0, 0).
decimal2peano(X, s(P)):- X2 is X-1, decimal2peano(X2, P).