min([H], H).
min([H|T], H):-min(T, M), M>H.
min([H|T], M):-min(T, M), M<=H.

max([H], H).
max([H|T], H):-max(T,M), M<=H.
max([H|T], M):-max(T,M), M>H.

minmax(L, MinVal, MaxVal):-min(L, MinVal), max(L, MaxVal).

