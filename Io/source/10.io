readln := method(
  File standardInput readLine
)
n := readln asNumber
preT := 0
preX := 0
preY := 0
flag := true
for(i, 1, n,
  l := readln split
  t := l at(0)
  x := l at(1)
  y := l at(2)
  dt := t - preT
  dl := (x - preX) abs + (y - preY) abs
  if(dx > dt and dx % 2 != dt % 2, flag = false)
)
if(flag, "Yes", "No") println