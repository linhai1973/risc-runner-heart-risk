@echo off
echo Starting RISC Admin Panel...
echo.
echo File location: %~dp0
echo.
start "" "%~dp0admin-login.html"
echo Admin panel opened in browser.
echo.
echo If tabs don't work, please:
echo 1. Press Ctrl+Shift+Delete to clear browser cache
echo 2. Or try a different browser (Chrome, Edge, Firefox)
echo.
pause
