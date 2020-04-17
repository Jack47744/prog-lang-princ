append([],A,A).
append([H|T],A,[H|L]):- append(T,A,L).