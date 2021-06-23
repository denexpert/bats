@ECHO OFF
:: Start Nginx
tasklist /FI "IMAGENAME eq nginx.exe" 2>NUL | find /I /N "nginx.exe">NUL
IF NOT "%ERRORLEVEL%"=="0" (
   :: Nginx is NOT running, so start it
   d:
   cd \nginx
   start nginx.exe
   ECHO Nginx started.
) else (
   ECHO Nginx is already running.
)

:: Start php
tasklist /FI "IMAGENAME eq php-cgi.exe" 2>NUL | find /I /N "php-cgi.exe">NUL
IF NOT "%ERRORLEVEL%"=="0" (
   :: PHP is NOT running, so start it
   d:
   cd \php
   start php-cgi.exe -b 127.0.0.1:9000
   ECHO PHP started.
) else (
   ECHO PHP is already running.
)


