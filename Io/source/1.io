l := File standardInput readLine split
a := l at(0) asNumber
b := l at(1) asNumber
if(a * b % 2 == 0) then(
  "Even" println
) else(
  "Odd" println
)
