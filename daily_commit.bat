@echo off

setlocal

REM Set the path to your Git repository
set "repo_path=C:\Users\abhishs19\Documents\Next\Daily-Commit"

REM Set the commit message for each auto-commit
set "commit_message=Daily auto-commit"

REM Change to the repository directory
cd /d "%repo_path%"

REM Loop to perform commits daily
:LOOP
git add --all
git commit -m "%commit_message%"
git push origin main
timeout /t 86400 >NUL
goto :LOOP

