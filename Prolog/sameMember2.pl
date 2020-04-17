sameMemberLR(List, List).
sameMemberLR([H1| T1], [H1| T2]):-sameMemberLR(T1, T2).
sameMemberLR([H1|T1], List2):-delete(H1, List2, List3, 0), sameMemberLR(T1, List3).



delete(X, [], [], 1).
delete(X, [X|T], Ans, 0):-delete(X, T, Ans, 1).
delete(X, [X|T], [X|Ans], 1):-delete(X, T, Ans, 1).
delete(X, [H|T], [H|Ans], K):-H\==X, delete(X, T, Ans, K).