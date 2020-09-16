get_string(String) :-
  current_input(Input),
  read_string(Input, ' \n', '', _, String).

count1([], 0).
count1(['1'| Rest], Ans):-
  count1(Rest, AnsR),
  Ans is AnsR + 1.
count1(['0'| Rest], Ans):-
  count1(Rest, Ans).

main :-
  get_string(S),
  string_chars(S, Chars),
  count1(Chars, Ans),
  write(Ans).