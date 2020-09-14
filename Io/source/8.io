l := File standardInput readLine split
n := l at(0) asNumber
y := l at(1) asNumber
result := "-1 -1 -1"
for(i, 0, n,
  for(j, 0, n - i,
    if(10 * i + 5 * j + n - i - j == y / 1000,
      result = i asString .. " " .. j asString .. " " .. (n - i - j) asString
    )
  )
)
result println