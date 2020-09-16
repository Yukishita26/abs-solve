get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

get_number(Number) :-
  get_string(String),
  number_string(Number, String).

solve(0, _, _, _).
solve(N, T0, X0, Y0) :-
  get_number(T),
  get_number(X),
  get_number(Y),
  Dt = T - T0,
  L is abs(X - X0) + abs(Y - Y0),
  Dt >= L,
  Dt mod 2 =:= L mod 2,
  N1 is N - 1,
  solve(N1, T, X, Y).

main:-
  get_number(N),
  solve(N, 0, 0, 0)->
    write("Yes");
    write("No").