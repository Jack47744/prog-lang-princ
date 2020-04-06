isin(H, [H|T]).
isin(X, [H|T]):-H\==X, isin(X, T).
subset([], Set).
subset([H|T], List2):-isin(H,List2), subset(T, List2).