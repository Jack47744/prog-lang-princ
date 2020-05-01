:-reconsult('familyQuiz.pl').
grandParent(X):-parent(X, A), parent(A, Y).
youngestGrandparent(X):-grandParent(X), age(X, M), \+ (grandParent(Y), age(Y, N), N<M).