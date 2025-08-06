@echo off
setlocal enabledelayedexpansion

REM Go to
cd /d "%~dp0"

REM Running
for /d %%F in (*) do (
    if exist "%%F\*.html" (
        for %%H in ("%%F\*.html") do (
            ren "%%H" "DragonPuzzle_PLA%%F.html"
        )
    )
)

echo ✅ Rename to DragonPuzzle_PLA_<folder>.html
pause
