dot([],[],0).
dot([],B,0).
dot(A,[],0).
dot([A|As], [B|Bs], N):- dot(As, Bs, N1), N is N1+(A*B). 