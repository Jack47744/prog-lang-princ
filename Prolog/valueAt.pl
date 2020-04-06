valueAt(0,[H|T],H).
valueAt(I, [H|T], Val):-K is I-1,valueAt(K, T, Val).