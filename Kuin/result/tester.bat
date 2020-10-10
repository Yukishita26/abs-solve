@echo off
for /l %%I in (0,1,10) do (
  echo %%I >> resout.txt
  kuincl.exe -i _%%I.kn -o %%I.exe -q
  for %%F in (./testcases/%%I/in/*.txt) do (
    set COM="(Measure-Command {./%%I.exe}).TotalSeconds"
    echo %%F >> resout.txt
    powershell -C %COM% < ./testcases/%%I/in/%%F >> resout.txt
  )
)