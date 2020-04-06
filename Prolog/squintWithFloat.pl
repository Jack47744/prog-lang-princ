squint([],[]).
squint([H,T], [A,B]):- integer(H), A is H*H, squint(T, B).
squint([H,T], [H,L]):- (\+integer(H)),squint(T,L).
