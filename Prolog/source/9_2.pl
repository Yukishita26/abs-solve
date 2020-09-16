% https://qiita.com/n4o847/items/2040067b5388481eae88#9-abc049c---%E7%99%BD%E6%98%BC%E5%A4%A2--daydream より

get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

satisfy([]).
satisfy([d, r, e, a, m | Rest]) :- satisfy(Rest).
satisfy([d, r, e, a, m, e, r | Rest]) :- satisfy(Rest).
satisfy([e, r, a, s, e | Rest]) :- satisfy(Rest).
satisfy([e, r, a, s, e, r | Rest]) :- satisfy(Rest).

main :-
  get_string(S),
  string_chars(S, Chars),
  satisfy(Chars) ->
    write('YES');
    write('NO').
