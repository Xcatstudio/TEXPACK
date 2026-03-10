@echo off
echo ====================================
echo Texture Loader Build Script
echo ====================================
echo.

REM Проверка CMake
where cmake >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] CMake не найден!
    echo Установите CMake: https://cmake.org/download/
    pause
    exit /b 1
)

REM Проверка GEODE_SDK
if not defined GEODE_SDK (
    echo [ERROR] Переменная GEODE_SDK не установлена!
    echo Установите Geode SDK и добавьте переменную окружения GEODE_SDK
    echo Пример: set GEODE_SDK=C:\path\to\geode\sdk
    pause
    exit /b 1
)

echo [INFO] CMake найден
echo [INFO] GEODE_SDK: %GEODE_SDK%
echo.

echo [STEP 1] Генерация проекта...
cmake -B build -DCMAKE_BUILD_TYPE=Release
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Ошибка генерации проекта
    pause
    exit /b 1
)

echo.
echo [STEP 2] Сборка мода...
cmake --build build --config Release
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Ошибка сборки
    pause
    exit /b 1
)

echo.
echo ====================================
echo [SUCCESS] Мод успешно собран!
echo ====================================
echo Файл мода находится в: build\Release\
pause
