@echo off
for /l %%I in (0,1,10) do (
  echo %%I >> resout.txt
  for %%F in (./testcases/%%I/in/*.txt) do (
    set COM="(Measure-Command {./%%I.exe}).TotalSeconds"
    echo %%F >> resout.txt
    powershell -C %COM% < ./testcases/%%I/in/%%F >> resout.txt
  )
)