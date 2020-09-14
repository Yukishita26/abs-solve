l := File standardInput readLine split
n := l at(0) asNumber
y := l at(1) asNumber
t := (y - 1000 * n) / 1000
a := t % 4
b := (t - 9 * (t % 4)) / 4
kmin := list((- a / 4) ceil, ((a + b - n) / 5) ceil) max
kmax := (b / 9) floor
if(kmin <= kmax,
  (4 * kmin + a) asString .. " " .. (-9 * kmin + b) asString .. " " .. (n - 4 * kmin - a + 9 * kmin - b) asString,
  "-1 -1 -1") println