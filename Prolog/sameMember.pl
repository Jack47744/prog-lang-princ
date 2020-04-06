sameMemberLR([],[]).
sameMemberLR(A,A).
sameMemberLR([H|T], List2):-delete(H, List2, [], 0, NewList), sameMemberLR(T, NewList).

delete(X, [], NewList, 1, NewList).
delete(X, [H|T], NewList, 0, Ans):-X==H, delete(X, T, NewList, 1, Ans).
delete(X, [H|T], NewList, 0, Ans):-H\==X, delete(X, T, [H|NewList], 0, Ans).
delete(X, [H|T], NewList, 1, Ans):-delete(X, T, [H|NewList], 1, Ans).
