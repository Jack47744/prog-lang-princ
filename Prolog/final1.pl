:-dynamic(availableDrink/2).
:-dynamic(totalMoney/1).
totalMoney(0).
availableDrink(pepsi, 5).
availableDrink(drinking_water, 5).
price(pepsi, 17).
price(drinking_water, 7).
isin([X|T], X).
isin([H|T], X), H\==T, isin(T, X).
notAvailable:-availableDrink(pepsi, 0), availableDrink(drinking_water, 0).

opertate:-(\+notAvailable), getMoney(A), retract(totalMoney(X)), S is X + A, asserta(totalMoney(S)), selectDrink(S, Drink), operate.
operate:-notAvailable, write("run out of drinks").

getMoney(A):-write("Plese insert Coin : "), read(A), isNumber(A), isin([1,2,5,10], A).

selectDrink(S, Drink):-price(Drink, P), S>=P, availableDrink(Drink, K), K>0, retract(availableDrink(Drink, K)), K2 is K-1, asserta(availableDrink(Drink, K2)), retract(totalMoney(K3)), K4 is K3-P, asserta(totalMoney(K4)), change(X, P).
selectDrink(S, Drink):-price(Drink, P), S>=P, availableDrink(Drink, 0), write("NotAvailable").
selectDrink(S, Drink):-price(Drink, P), S<P, write("Not enough money").
