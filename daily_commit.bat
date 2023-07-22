@echo off

REM Set the path to your Git repository
set "repo_path=C:\Users\abhishs19\Documents\Next\Daily-Commit"

REM Set the commit message for each auto-commit
set "commit_message=Daily auto-commit"

:START
REM Clone or pull the latest version of the script from the repository
if not exist "script_repo" (
    git clone https://github.com/fragenabhishek/Daily-Commit.git script_repo 
) else (
    cd script_repo
    git pull
    cd ..
)

REM Replace the current script with the updated version
move /y "script_repo\script.bat" "%~dp0"

REM Change to the repository directory
cd /d "%repo_path%"

REM Commit and push changes to the repository
git add .
git commit -m "%commit_message%"
git push origin main

REM Wait for 1 hr before the next commit
timeout /t 3600 >NUL
goto START
