@echo off
setlocal

REM ”кажите путь к яндекс.Ѕраузеру (используем переменную %LOCALAPPDATA%)
set BROWSER_PATH="%LOCALAPPDATA%\Yandex\YandexBrowser\Application\browser.exe"

REM ”кажите ссылку, которую нужно открыть
set URL="https://rutube.ru/video/f3b615db135287a64584737e664e1e4b/?t=0"

REM ѕровер€ем, существует ли яндекс.Ѕраузер по указанному пути
if not exist %BROWSER_PATH% (
    echo яндекс.Ѕраузер не найден по пути: %BROWSER_PATH%
    pause
    exit /b
)

REM ÷икл дл€ открыти€ ссылки 20 раз
for /L %%i in (1,1,20) do (
    start "" %BROWSER_PATH% %URL%
)

endlocal