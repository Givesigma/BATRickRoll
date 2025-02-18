DELAY 1000
REM Открываем браузер 20 раз
REPEAT 20
    GUI r
    DELAY 500
    STRING "%LOCALAPPDATA%\Yandex\YandexBrowser\Application\browser.exe"
    ENTER
    DELAY 2000
    STRING https://rutube.ru/video/f3b615db135287a64584737e664e1e4b/?t=0
    ENTER
    DELAY 1000
    ALT F4
    DELAY 500
ENDREPEAT