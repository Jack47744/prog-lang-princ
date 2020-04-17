length([],0).
length([H|T], N):-length(T, N2), N is N2+1.