sum([], 0).
sum([X], X).
sum([H|T], N) :- sum(T, N2), N is N2+H.
