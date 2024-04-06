% Rozpoznawanie wielomian�w jednej zmiennej
% o wsp�czynnikach liczbowych

/*
Definicja rekurencja strukturalna

1) x jest wielomianem zmiennej x
   c - liczba jest wielomianem dowolnej zmiennej

2) Je�eli W, W1, W2 s� wielomianami zn. x, to
   -W, W1+W2, W1-W2, W1*W2, W^N (N-liczba naturalna)
   s� wielomianami zmiennej x
*/


% wielomian(W,X)
% spe�niony, gdy w jest wielomianem zmiennej X
% o wsp�czynnikach liczbowych
% definicja rekurencyjna

% warunki zako�czenia rekurencji
  wielomian(X,X).
  wielomian(C,_):-number(C).

% rekurencja
  wielomian(-W,X):-wielomian(W,X).
  wielomian(W1+W2,X):-wielomian(W1,X),
          wielomian(W2,X).
  wielomian(W1-W2,X):-wielomian(W1,X),
          wielomian(W2,X).
  wielomian(W1*W2,X):-wielomian(W1,X),
          wielomian(W2,X).
  wielomian(W^N,X):-integer(N),
         N>1,
         wielomian(W,X).

/*
Sesja prologowa

1 ?- wielomian(0,x).
true.

2 ?- wielomian(5,x).
true.

3 ?- wielomian(5,y).
true.

4 ?- wielomian(x,x).
true ;
false.

5 ?- wielomian(2*x+1,x).
true ;
false.

6 ?- wielomian(x^3,x).
true ;
false.

7 ?- wielomian((2*x^3+x)^3*(x+3),x).
true ;
false.

8 ?- wielomian(x^(-3),x).
false.

*/







