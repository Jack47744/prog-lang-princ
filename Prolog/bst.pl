node(nil).
node(Left, Value, Right).

find(V, node(Left, V, Right)).
find(V, node(Left, Value, Right)):-V\==Value, Left\==nil, find(V,Left).
find(V, node(Left, Value, Right)):-V\==Value, Right\==nil, find(V,Right).


insert(V, nil, node(nil, V, nil)).
insert(V, Node, Node):-find(V, Node).
insert(V, node(nil, M, R), node(node(nil, V, nil), M, R)) :- V<M.
insert(V, node(L, M, R), node(Ans, M, R)) :- V<M, L\==nil, insert(V, L, Ans).
insert(V, node(L, M, nil), node(L, M, node(nil, V, nil))):- V>M.
insert(V, node(L, M, R), node(L, M, Ans)) :- V>M, R\==nil, insert(V, R, Ans).