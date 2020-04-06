envelop([],[]).
envelop([H|T], [containter(H), L]) :- envelop(T, L).