readln := method(
  File standardInput readLine
)
n := readln asNumber
lst := readln split map(asNumber) sort reverse
alice := 0
bob := 0
for(i, 0, n - 1,
  if(i % 2 == 0,
    alice = alice + lst at(i),
    bob = bob + lst at(i)
  )
)
(alice - bob) println