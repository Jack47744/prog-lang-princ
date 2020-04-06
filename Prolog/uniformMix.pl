uniformMix(L1,L2,Ans):-f(L1, L2, Ans, 0).

f([], [], [], Count).
f([H1|T1], [H2|T2], [H2|Ans], Count):- 1 is mod(Count, 2), K is Count+1, f(T1,T2,Ans,K).
f([H1|T1], [H2|T2], [H1|Ans], Count):- 0 is mod(Count, 2), K is Count+1, f(T1,T2,Ans,K).
