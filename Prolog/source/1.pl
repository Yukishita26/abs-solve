get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).
get_number(Number) :-
  get_string(String),
  number_string(Number, String).

main :-
  get_number(A),
  get_number(B),
  A * B mod 2 =:= 0 ->
    write('Even');
    write('Odd').