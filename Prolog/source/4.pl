get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

get_number(Number) :-
  get_string(String),
  number_string(Number, String).

ok(A, B, C, P, Q, R, X):-
  between(0, A, P),
  between(0, B, Q),
  between(0, C, R),
  X =:= 500 * P + 100 * Q + 50 * R.

main :-
  get_number(A),
  get_number(B),
  get_number(C),
  get_number(X),
  findall(_, ok(A, B, C, P, Q, R, X), Results),
  length(Results, Ans),
  write(Ans).