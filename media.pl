media([], _, 0).
media([Cab| Resto], Nelem, Med):- Nelem2 is Nelem-1, media(Resto, Nelem2, Med2), 
	Med3 is Med2 * Nelem2, Med4 is Med3+Cab, Med is Med4/Nelem.
	
% media([1,2,3, 4, 5], 5, Med).