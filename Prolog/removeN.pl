removeN(I, [], [], []).
removeN(0, List, List, []).
removeN(I, List, List, []):-I<0.
removeN(I, [H|T1], Ans, [H|T2]):-I>0, I2 is I-1, removeN(I2, T1, Ans, T2).
