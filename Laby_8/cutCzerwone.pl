/* U¿ycie predykatu cut w sytuacji, gdy logika problemu wymaga,
by zapobiec w pewnych przypadkach mo¿liwoœci poszukiwania
rozwi¹zañ alternatywnych. */

f0(X,Y):-between(15,17,X),
        between(X,18,Y).
f0(19,19).

f1(X,Y):-!,
        between(15,17,X),
        between(X,18,Y).
f1(19,19).

f2(X,Y):-between(15,17,X),
         !,
         between(X,18,Y).
f2(19,19).


f3(X,Y):-between(15,17,X),
         between(X,18,Y),
         !.
f3(19, 19).

/* Kacper Renkel
   X = 14
*/
