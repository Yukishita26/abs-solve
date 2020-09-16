get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

get_number(Number) :-
  get_string(String),
  number_string(Number, String).

digit_sum(0, 0):- !.
digit_sum(Number, Dsum):-
  divmod(Number, 10, Q, R),
  digit_sum(Q, Dsum0),
  Dsum is R + Dsum0.

ok(N, A, B, X):-
  between(1, N, X),
  digit_sum(X, Dsum),
  between(A, B, Dsum).

main:-
  get_number(N),
  get_number(A),
  get_number(B),
  findall(X, ok(N, A, B, X), Results),
  sum_list(Results, Sum),
  write(Sum).