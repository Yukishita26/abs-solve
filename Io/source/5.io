ketawa := method(num,
  num asString asList map(asNumber) sum
)
l :=  File standardInput readLiner split
n := l at(0) asNumber
a := l at(1) asNumber
b := l at(2) asNumber
result := 0
for(i, 1, n,
  w := ketawa(i)
  if(a <= w and w <= b, result = result + i)
)
result println