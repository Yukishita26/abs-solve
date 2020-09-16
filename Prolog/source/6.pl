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

score(_, [], 0).
score(0, [A|Rest], Score):-
  score(1, Rest, Score1),
  Score is Score1 + A.
score(1, [A|Rest], Score):-
  score(0, Rest, Score1),
  Score is Score1 - A.

main:-
  get_number(N),
  get_numbers(N, As),
  sort(0, @>=, As, SortedAs),
  score(0, SortedAs, Score),
  write(Score).