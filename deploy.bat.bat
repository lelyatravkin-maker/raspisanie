@echo off
chcp 65001 >nul
title 🚀 Деплой КГДП на Firebase
color 0B

echo.
echo ╔══════════════════════════════════════════════════════════╗
echo ║                                                          ║
echo ║        🚀 ДЕПЛОЙ РАСПИСАНИЯ КГДП НА FIREBASE            ║
echo ║                                                          ║
echo ╚══════════════════════════════════════════════════════════╝
echo.

cd /d "C:\Users\Galant GL40\schedule-app"

echo 📂 Папка: %CD%
echo.

if not exist "firebase.json" (
    echo ❌ ОШИБКА: Не найден firebase.json
    echo Проверьте путь: C:\Users\Galant GL40\schedule-app
    pause
    exit /b 1
)

echo ⏳ Начинаю деплой...
echo.

call firebase deploy --only hosting

if %errorlevel% neq 0 (
    echo.
    echo ❌ ОШИБКА ДЕПЛОЯ!
    echo.
    pause
    exit /b 1
)

echo.
echo ╔══════════════════════════════════════════════════════════╗
echo ║                                                          ║
echo ║              ✅ ДЕПЛОЙ ЗАВЕРШЁН УСПЕШНО!                ║
echo ║                                                          ║
echo ╚══════════════════════════════════════════════════════════╝
echo.
echo 🌐 Сайт: https://obuz-kgdp-8-0-1-2.web.app
echo.
echo 💡 Что делать дальше:
echo    1. Откройте сайт
echo    2. Нажмите Ctrl + F5
echo    3. 5 кликов по логотипу "ДП" -^> пароль 12345
echo    4. Загрузите Excel-файл (.xlsx)
echo.

pause