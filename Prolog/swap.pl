valueAt(0,[H|T],H).
valueAt(I, [H|T], Val):-K is I-1,valueAt(K, T, Val).
swap(P1, P2, List, Ans):-valueAt(P1, List, K1), valueAt(P2, List, K2),swap2(P1, P2, List, Ans, K1, K2).
swap2(P1,P2, [], [], K1,K2).
swap2(P1, P2, [H|T], [K2|Ans], K1, K2):-P1==0, P3 is P1-1, P4 is P2-1, swap2(P3, P4, T, Ans, K1, K2).
swap2(P1, P2, [H|T], [K1|Ans], K1, K2):-P2==0, P3 is P1-1, P4 is P2-1, swap2(P3, P4, T, Ans, K1, K2).
swap2(P1, P2, [H|T], [H|Ans], K1, K2):-P1\==0, P2\==0, P3 is P1-1, P4 is P2-1, swap2(P3, P4, T, Ans, K1, K2).


