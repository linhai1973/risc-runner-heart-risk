@echo off
echo ========================================
echo RISC Deploy Tool
echo ========================================
echo.
echo [1/2] Pushing to GitHub...
git push origin main
echo.
echo [2/2] Pushing to Gitee...
git push gitee main
echo.
echo Done!
pause
