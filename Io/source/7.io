readln := method(
  File standardInput readLine
)
n := readln asNumber
lst := list()
for(i, 0, n - 1,
  lst push(readln asNumber)
)
lst unique size println