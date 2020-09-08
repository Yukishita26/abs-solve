readln := method(
  File standardInput readLine
)
s := readln
r := 0
for(i, 0, s size - 1,
  r = r + if(s at(i) == "1" at(0), 1, 0)
)
r println

