get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

get_number(Number) :-
  get_string(String),
  number_string(Number, String).

get_numbers(0, []).
get_numbers(Size, [Number1 | List0]):-
  Size0 is Size - 1,
  get_numbers(Size0, List0),
  get_number(Number1).


even(X) :- X mod 2 =:= 0.

half(X, Y) :- Y is X // 2.

shift_time(N, List):-
  maplist(even, List) ->
    maplist(half, List, List0),
    shift_time(N0, List0),
    N is N0 + 1;
    N = 0.

main :-
  get_number(N),
  get_numbers(N, List),
  shift_time(Ans, List),
  write(Ans).