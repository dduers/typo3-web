:: build docker image and configure containers within
@ECHO OFF
:: create data tar
tar -cf archive.tar .
:: parent direcory name for docker image name
for %%a in ("%~dp0\.") do set "dockerimage=%%~nxa"
docker compose up --build --detach
:: update configuration for every container in the image
FOR /F "delims=" %%G IN ('"docker ps --filter name=/%dockerimage%-* --format {{.Names}}"') DO docker update --restart=no %%G >nul
