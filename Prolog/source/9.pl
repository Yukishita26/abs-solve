get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

ok([]).
ok([m, a, e, r, d | Rest]) :- ok(Rest).
ok([r, e, m, a, e, r, d | Rest]) :- ok(Rest).
ok([e, s, a, r, e | Rest]) :- ok(Rest).
ok([r, e, s, a, r ,e | Rest]) :- ok(Rest).

main :-
  get_string(S),
  string_chars(S, Chars),
  reverse(Chars, RevChars),
  ok(RevChars) ->
    write('YES');
    write('NO').