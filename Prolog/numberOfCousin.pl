cousin(X, Y) :- parent(X1, X), parent(Y1, Y), parent(A, X1), parent(A, Y1), X1\==Y1.
isin(H,[H|T]).
isin(X,[H|L]):-X\==H, isin(X,L).
numberOfCousin(X, N) :- numberOfCousin(X, N, List).
numberOfCousin(X, N, [Y|List]):-\+isin(Y, List), cousin(X, Y), numberOfCousin(X, K, List), N is K+1. 