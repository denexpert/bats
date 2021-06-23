@ECHO OFF
:: Stop Nginx
tasklist /FI "IMAGENAME eq nginx.exe" 2>NUL | find /I /N "nginx.exe">NUL
IF NOT "%ERRORLEVEL%"=="0" (
   ECHO Nginx is not running.
) else (
   ECHO Nginx is shutting down...
   Taskkill /f /im nginx.exe
   ECHO Nginx is stopped.
)
