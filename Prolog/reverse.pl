append([],A,A).
append([H|T],A,[H|L]):- append(T,A,L).
reverse([], []).
reverse([H|T], List2):-append(List1, [H], List2), reverse(T, List1).