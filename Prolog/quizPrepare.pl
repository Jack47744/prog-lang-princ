isin(H, [H|T]).
isin(X, [H|T]):-H\==X, isin(X, T).
subset([], List).
subset([H|T], List):-isin(H, List), subset(T, List).


sameMemberLR(List1, List1).




delete(X, [], Ans, 1).
delete(X, [X|T], Ans, 0):-delete(X, T, Ans, 1).
delete(X, [X|T], [X, Ans], 1):-delete(X, T, Ans, 1).
delete(X, [H|T], [H|Ans], P):-delete(X, T, Ans, P).
