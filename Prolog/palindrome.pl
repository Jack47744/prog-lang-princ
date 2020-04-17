palindrome([]).
palindrome([H]).
palindrome(List):-deleteBack(List, [H|T], H), palindrome(T).
deleteBack([H], [], H).
deleteBack([H|T], [H|Ans], P):-deleteBack(T, Ans, P).