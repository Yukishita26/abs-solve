get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

get_number(Number) :-
  get_string(String),
  number_string(Number, String).

ok(N, Y, P, Q, R):-
  between(0, N, P),
  Rest is N - P,
  between(0, Rest, Q),
  R is N - P - Q,
  Y =:= 10000 * P + 5000 * Q + 1000 * R, !.

main :-
  get_number(N),
  get_number(Y),
  ok(N, Y, P, Q, R)->
    write(P), write(" "), write(Q), write(" "), write(R);
    write("-1 -1 -1").