change(X, Y, [], []).
change(X, Y, [X|T], [Y|Ans]):-change(X, Y, T, Ans).
change(X, Y, [H|T], [H|Ans]):-change(X, Y, T, Ans).