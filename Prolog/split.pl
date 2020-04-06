split(List1, 0, [], List1).
split([H|T], Pos, [H|List1], List2):-K is Pos-1, split(T, K, List1, List2).