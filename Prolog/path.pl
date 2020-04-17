arrow(a, b).
arrow(b, c).
arrow(b, d).
arrow(c, f).
path(A, B, 1) :- arrow(A, B).
path(A, B, N) :- arrow(A, C), path(C, B, N2), N is N2 + 1.
shortest(A, B, N) :- path(A, B, N), \+(path(A, B, N2), N2<N).
