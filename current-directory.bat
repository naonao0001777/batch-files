rem 拡張子を変更して使用

@echo off
setlocal enabledelayedexpansion

set /a count=0

echo display current directory file content

for %%i in (*.txt) do (
echo ファイル名：%%i

set /a count=!count!+1

type %%i | more
)

echo ファイル数：%count%

pause
exit 0
