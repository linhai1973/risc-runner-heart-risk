@echo off
chcp 65001 >nul
echo ========================================
echo   RISC网站双线部署工具
echo   自动推送到GitHub和Gitee
echo ========================================
echo.

:: 推送到GitHub
echo [1/2] 正在推送到GitHub...
git push origin main
if %errorlevel% equ 0 (
    echo ✓ GitHub推送成功
) else (
    echo ✗ GitHub推送失败，请检查网络
)

echo.

:: 推送到Gitee（如果已配置）
echo [2/2] 正在推送到Gitee...
git push gitee main 2>nul
if %errorlevel% equ 0 (
    echo ✓ Gitee推送成功
) else (
    echo ✗ Gitee未配置或推送失败
    echo   如需配置Gitee，请运行 setup-gitee.bat
)

echo.
echo ========================================
echo   部署完成！
echo   GitHub: https://linhai1973.github.io/risc-runner-heart-risk/
echo   Gitee:  https://你的用户名.gitee.io/risc-runner-heart-risk/
echo ========================================
pause
