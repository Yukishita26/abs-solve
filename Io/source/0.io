readln := method(
    File standardInput readLine
)
a := readln asNumber
l := readln split
b := l at(0) asNumber
c := l at(1) asNumber
s := readln
writeln(a + b + c, " ", s)