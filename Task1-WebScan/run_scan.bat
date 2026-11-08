@echo off
title Assignment 4 - Task 1 - OWASP ZAP scan of Juice Shop
cd /d "%~dp0"
echo Starting OWASP Juice Shop on http://localhost:3000 ...
docker start juice-shop >nul 2>&1 || docker run -d --name juice-shop -p 3000:3000 bkimminich/juice-shop
timeout /t 15 >nul
echo Running OWASP ZAP full scan (this can take 10-20 minutes)...
docker run --rm -v "%cd%:/zap/wrk" -t zaproxy/zap-stable zap-full-scan.py -t http://host.docker.internal:3000 -r zap_report.html -J zap_report.json -m 3 -T 20
echo.
echo Done. Opening report...
start "" zap_report.html
pause
