f([], []).
f([H|T], [K|List1]):- K is H*H, f(T, List1).

