@echo off

set STUDIO_PATH=%~dp0
set DOT_STUDIO="%UserProfile%\.studio"

:: Make sure the .studio subdirectories exist
if not exist %DOT_STUDIO%\db\* mkdir %DOT_STUDIO%\db
if not exist %DOT_STUDIO%\library\* mkdir %DOT_STUDIO%\library

java -Dvertx.disableDnsResolver=true -Dfile.encoding=UTF-8 ^
 -cp "%STUDIO_PATH%/studio-web-ui-0.4.3-SNAPSHOT.jar";"%STUDIO_PATH%/lib/*";. ^
 io.vertx.core.Launcher run studio.webui.MainVerticle
