readln := method(
  File standardInput readLine
)
a := readln asNumber
b := readln asNumber
c := readln asNumber
x := readln asNumber / 50
result := 0
for(i, 0, a,
  for(j, 0, b,
    for(k, 0, c,
      if(i * 10 + j * 2 + k == x, result = result + 1)
    )
  )
)
result println


result = 0
for(i, 0, a,
  for(j, 0, b,
    if(0 <= x - i * 10 - j * 2 and x - i * 10 - j * 2 <= c, result = result + 1)
  )
)
result println