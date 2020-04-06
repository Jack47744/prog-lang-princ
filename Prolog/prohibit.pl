prohibit(bother).
prohibit(blast).
prohibit(drat).
f([],[]).
f([H|T], [H|L]) :- \+prohibit(H), f(T, L).
f([H|T], L) :- prohibit(H), f(T, L).