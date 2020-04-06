isin(H,[H|T]).
isin(X,[H|L]):-X\==H, isin(X,L).