max([H], H).
max([H|T], M):-max(T,M), M>H.
max([H|T], H):-max(T,M), H>=M.
 