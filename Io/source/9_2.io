/*
Regex
Sequence replace := method(p, q, 
  self matchesOfRegex(p asRegex) replaceAllWith(q)
)
*/
s := File standardInput readLine
len := s size
i := len
flag := true
while(i > 0,
  if("erase" == s exSlice(i - 5, i)) then(
    i = i - 5
  ) elseif("eraser" == s exSlice(i - 6, i)) then(
    i = i - 6
  ) elseif("dream" == s exSlice(i - 5, i)) then(
    i = i - 5
  ) elseif("dreamer" == s exSlice(i - 7, i)) then(
    i = i - 7
  ) else(
    flag = false;
    break
  )
)
if(flag, "YES", "NO") println