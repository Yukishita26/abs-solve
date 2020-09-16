get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

get_number(Number) :-
  get_string(String),
  number_string(Number, String).

get_numbers(0, []).
get_numbers(N, [X|Xs]) :-
  get_number(X),
  N1 is N - 1,
  get_numbers(N1, Xs).

main:-
  get_number(N),
  get_numbers(N, Ds),
  sort(Ds, SortedDs),
  length(SortedDs, Ans),
  write(Ans).