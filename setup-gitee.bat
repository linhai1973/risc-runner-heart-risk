@echo off
echo ========================================
echo Gitee Setup Tool
echo ========================================
echo.
echo Step 1: Open https://gitee.com/ in browser
echo Step 2: Login or Register
echo Step 3: Click + to create new repository
echo Step 4: Repository name: risc-runner-heart-risk
echo Step 5: Select Public, click Create
echo Step 6: Copy repository URL
echo.
set /p GITEE_URL=Enter Gitee URL: 
git remote add gitee %GITEE_URL%
echo Done!
pause
