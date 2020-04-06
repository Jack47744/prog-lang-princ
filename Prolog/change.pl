change(X,Y,[],[]).
change(X,Y,[H|T], [Y|List2]):-X==H, change(X,Y,T, List2).
change(X,Y,[H|T], [H|List2]):-X\==H, change(X,Y,T,List2).