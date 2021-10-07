:: get ip string
for /f "tokens=2 delims=:" %%b in ('ipconfig^|find /i "172."') do set ipstr=%%b
:: remove space from ip string
for /f "tokens=1 delims= " %%b in ("%ipstr%") do set ip=%%b
:: start docker
docker run --env DISPLAY=%ip%:0 -it -v C:\docker-data-dir:/mnt/docker dev:latest /bin/bash