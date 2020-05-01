hanoi(I, A, B, C) :- I>1, K is I-1, hanoi(K, A, C,B), write("Move disk "), write(I), write(" from peg "), write(A), write(" to peg "), write(B), write("."), nl, hanoi(K, C, B, A).
hanoi(1, A, B, C) :- write("Move disk 1 from peg "), write(A), write(" to peg "), write(B), write("."), nl.

hanoisave(I, A, B, C) :- tell('result.pl'), hanoi(I, A, B, C), told.
