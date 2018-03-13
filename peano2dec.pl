% peano2dec(+peano, ?Dec)
% es cierto cuando Peano unifica
% con el número natural
% equivalente al decimal Dec
% ejemplo:
% peano2dec(s(s(s(0))), D)
% D=3
peano2dec(0, 0).
peano2dec(s(P),X2):-  peano2dec(P, X), X2 is X+1.