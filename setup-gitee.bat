@echo off
chcp 65001 >nul
echo ========================================
echo   Gitee配置工具
echo ========================================
echo.
echo 请按照以下步骤操作：
echo.
echo 1. 打开浏览器，访问 https://gitee.com/
echo 2. 注册或登录Gitee账号
echo 3. 点击右上角"+"，选择"新建仓库"
echo 4. 仓库名称填写：risc-runner-heart-risk
echo 5. 选择"公开"，点击"创建"
echo 6. 复制仓库地址（类似：https://gitee.com/你的用户名/risc-runner-heart-risk.git）
echo.
echo ========================================
echo.

set /p GITEE_URL="请输入Gitee仓库地址: "

if "%GITEE_URL%"=="" (
    echo 未输入地址，配置取消
    pause
    exit /b
)

echo.
echo 正在添加Gitee远程仓库...
git remote add gitee %GITEE_URL%

if %errorlevel% equ 0 (
    echo ✓ Gitee配置成功！
    echo.
    echo 现在可以运行 deploy.bat 进行双线部署
) else (
    echo ✗ 配置失败，请检查地址是否正确
    echo   如果已配置过，请先运行: git remote remove gitee
)

echo.
pause
