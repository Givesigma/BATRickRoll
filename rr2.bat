@echo off
setlocal

REM ������� ���� � ������.�������� (���������� ���������� %LOCALAPPDATA%)
set BROWSER_PATH="%LOCALAPPDATA%\Yandex\YandexBrowser\Application\browser.exe"

REM ������� ������, ������� ����� �������
set URL="https://rutube.ru/video/f3b615db135287a64584737e664e1e4b/?t=0"

REM ���������, ���������� �� ������.������� �� ���������� ����
if not exist %BROWSER_PATH% (
    echo ������.������� �� ������ �� ����: %BROWSER_PATH%
    pause
    exit /b
)

REM ���� ��� �������� ������ 20 ���
for /L %%i in (1,1,20) do (
    start "" %BROWSER_PATH% %URL%
)

endlocal