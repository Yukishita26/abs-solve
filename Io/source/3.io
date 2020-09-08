readln := method(
  File standardInput readLine
)
n := readln asNumber
l := readln split
a := list()
m := 100
for(i, 0, n - 1,
  a := l at(i) asNumber;
  c := 0;
  while(a % 2 == 0,
    a = a / 2 floor;
    c = c + 1
  );
  m = m min(c)
)
m println