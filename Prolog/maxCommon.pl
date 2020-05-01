isin(H,[H|T]).
isin(X,[H|L]):-X\==H, isin(X,L).
max([H], H).
max([H|T], M):-max(T,M), M>H.
max([H|T], H):-max(T,M), H>=M.
intersect([], _, []).
intersect([H|T1], L2, [H|T3]) :-isin(H,L2), intersect(T1, L2, T3).
intersect([_|T1], L2, L3) :- intersect(T1, L2, L3).

maxCommon(L1, L2, X):-intersection(L1, L2, L3), max(L3, X).