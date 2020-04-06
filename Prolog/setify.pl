setify([],[], P).
setify([H|T],[H|L], P) :- \+isIn(H, P), setify(T, L, [H|P]).
setify([H|T], L, P) :- isIn(H, P), setify(T, L, P).
isIn(E, [H|T]) :- E==H.
isIn(E, [H|T]) :- E\=H, isIn(E, T).
f(L, P):-setify(L, P, []).