@echo off
echo ====================================
echo GitHub Upload Script
echo ====================================
echo.

REM Проверка Git
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Git не установлен!
    echo Скачай Git: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [INFO] Git найден
echo.

REM Инициализация репозитория
if not exist .git (
    echo [STEP 1] Инициализация Git репозитория...
    git init
    git add .
    git commit -m "Initial commit: Texture Loader mod for GD 2.206"
    echo.
    echo [INFO] Репозиторий инициализирован!
    echo.
    echo ====================================
    echo СЛЕДУЮЩИЕ ШАГИ:
    echo ====================================
    echo 1. Создай репозиторий на GitHub.com
    echo 2. Скопируй URL репозитория
    echo 3. Выполни команды:
    echo.
    echo    git remote add origin https://github.com/USERNAME/REPO.git
    echo    git branch -M main
    echo    git push -u origin main
    echo.
    echo Замени USERNAME и REPO на свои!
    echo ====================================
) else (
    echo [INFO] Git репозиторий уже существует
    echo.
    set /p commit_msg="Введи описание изменений: "
    git add .
    git commit -m "%commit_msg%"
    git push
    echo.
    echo [SUCCESS] Изменения загружены на GitHub!
)

pause
