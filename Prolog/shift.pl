append([],A,A).
append([H|T],A,[H|L]):- append(T,A,L).
listSize([],0).
listSize([H|T], I):-listSize(T, N), I is N+1.

shift(List1, I, List2):-listSize(List1, P), M is mod(I,P), shift(List1, M, List2, []).
shift(List1, 0, Ans, List2):-append(List1, List2, Ans).
shift([H|T], I, List2, Tmp):-K is I-1,append(Tmp, [H], P), shift(T, K, List2, P).








