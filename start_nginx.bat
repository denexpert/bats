@ECHO OFF
:: Start Nginx
tasklist /FI "IMAGENAME eq nginx.exe" 2>NUL | find /I /N "nginx.exe">NUL
IF NOT "%ERRORLEVEL%"=="0" (
   :: Nginx is NOT running, so start it
   d:
   cd \nginx
   start nginx.exe
   ECHO Nginx started.
   
   cd ..
   cd \bin
) else (
   ECHO Nginx is already running.
)
