# ZAP Scanning Report

ZAP by [Checkmarx](https://checkmarx.com/).


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 6 |
| Low | 4 |
| Informational | 4 |




## Insights

| Level | Reason | Site | Description | Statistic |
| --- | --- | --- | --- | --- |
| Low | Warning |  | ZAP warnings logged - see the zap.log file for details | 51    |
| Info | Informational |  | Percentage of network failures | 1 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of responses with status code 2xx | 89 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of responses with status code 3xx | 1 % |
| Info | Exceeded Low | http://host.docker.internal:3000 | Percentage of responses with status code 4xx | 9 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of endpoints with content type application/javascript | 5 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of endpoints with content type application/octet-stream | 3 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of endpoints with content type image/x-icon | 1 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of endpoints with content type text/css | 1 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of endpoints with content type text/html | 86 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of endpoints with content type text/markdown | 2 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of endpoints with content type text/plain | 1 % |
| Info | Informational | http://host.docker.internal:3000 | Percentage of endpoints with method GET | 100 % |
| Info | Informational | http://host.docker.internal:3000 | Count of total endpoints | 132    |
| Info | Exceeded Low | http://host.docker.internal:3000 | Percentage of slow responses | 30 % |
| Info | Informational | https://host.docker.internal:3000 | Percentage of endpoints with method GET | 100 % |
| Info | Informational | https://host.docker.internal:3000 | Count of total endpoints | 1    |







## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- |
| Backup File Disclosure | Medium | 31 |
| Bypassing 403 | Medium | 6 |
| CORS Misconfiguration | Medium | Systemic |
| Content Security Policy (CSP) Header Not Set | Medium | Systemic |
| Cross-Domain Misconfiguration | Medium | Systemic |
| HTTP Only Site | Medium | 1 |
| Cross-Origin-Embedder-Policy Header Missing or Invalid | Low | Systemic |
| Cross-Origin-Opener-Policy Header Missing or Invalid | Low | Systemic |
| Dangerous JS Functions | Low | 2 |
| Deprecated Feature Policy Header Set | Low | Systemic |
| Modern Web Application | Informational | Systemic |
| Storable and Cacheable Content | Informational | 1 |
| Storable but Non-Cacheable Content | Informational | Systemic |
| User Agent Fuzzer | Informational | Systemic |




## Alert Detail



### [ Backup File Disclosure ](https://www.zaproxy.org/docs/alerts/10095/)



##### Medium (Medium)

### Description

A backup of the file was disclosed by the web server.

* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(2&29
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (2)`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(2&29/juicy_malware_linux_amd_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (2)/juicy_malware_linux_amd_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)/juicy_malware_linux_amd_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_linux_amd_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)/juicy_malware_linux_amd_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(2&29/juicy_malware_linux_arm_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (2)/juicy_malware_linux_arm_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)/juicy_malware_linux_arm_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_linux_arm_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)/juicy_malware_linux_arm_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(2&29/juicy_malware_macos_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (2)/juicy_malware_macos_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)/juicy_malware_macos_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_macos_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)/juicy_malware_macos_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(2&29/juicy_malware_windows_64.exe.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (2)/juicy_malware_windows_64.exe.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)/juicy_malware_windows_64.exe.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_windows_64.exe.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(2)/juicy_malware_windows_64.exe.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(3&29
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (3)`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(3&29/juicy_malware_linux_amd_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (3)/juicy_malware_linux_amd_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)/juicy_malware_linux_amd_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_linux_amd_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)/juicy_malware_linux_amd_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(3&29/juicy_malware_linux_arm_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (3)/juicy_malware_linux_arm_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)/juicy_malware_linux_arm_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_linux_arm_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)/juicy_malware_linux_arm_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(3&29/juicy_malware_macos_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (3)/juicy_malware_macos_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)/juicy_malware_macos_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_macos_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)/juicy_malware_macos_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy%2520(3&29/juicy_malware_windows_64.exe.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy (3)/juicy_malware_windows_64.exe.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)/juicy_malware_windows_64.exe.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_windows_64.exe.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy%20(3)/juicy_malware_windows_64.exe.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy/juicy_malware_linux_amd_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy/juicy_malware_linux_amd_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy/juicy_malware_linux_amd_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_linux_amd_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy/juicy_malware_linux_amd_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy/juicy_malware_linux_arm_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy/juicy_malware_linux_arm_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy/juicy_malware_linux_arm_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_linux_arm_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy/juicy_malware_linux_arm_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy/juicy_malware_macos_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy/juicy_malware_macos_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy/juicy_malware_macos_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_macos_64.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy/juicy_malware_macos_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine%2520-%2520Copy/juicy_malware_windows_64.exe.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine - Copy/juicy_malware_windows_64.exe.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine%20-%20Copy/juicy_malware_windows_64.exe.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_windows_64.exe.url] is available at [http://host.docker.internal:3000/ftp/quarantine%20-%20Copy/juicy_malware_windows_64.exe.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine.bac
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.bac`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.bac`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.bac]`
* URL: http://host.docker.internal:3000/ftp/quarantine.backup
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.backup`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.backup`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.backup]`
* URL: http://host.docker.internal:3000/ftp/quarantine.bak
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.bak`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.bak`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.bak]`
* URL: http://host.docker.internal:3000/ftp/quarantine.jar
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.jar`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.jar`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.jar]`
* URL: http://host.docker.internal:3000/ftp/quarantine.log
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.log`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.log`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.log]`
* URL: http://host.docker.internal:3000/ftp/quarantine.old
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.old`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.old`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.old]`
* URL: http://host.docker.internal:3000/ftp/quarantine.swp
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.swp`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.swp`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.swp]`
* URL: http://host.docker.internal:3000/ftp/quarantine.tar
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.tar`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.tar`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.tar]`
* URL: http://host.docker.internal:3000/ftp/quarantine.zip
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.zip`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.zip`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.zip]`
* URL: http://host.docker.internal:3000/ftp/quarantine.~bk
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine.~bk`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine.~bk`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine.~bk]`
* URL: http://host.docker.internal:3000/ftp/quarantinebackup
  * Node Name: `http://host.docker.internal:3000/ftp/quarantinebackup`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantinebackup`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantinebackup]`
* URL: http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_linux_amd_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_linux_amd_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_linux_amd_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_linux_amd_64.url] is available at [http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_linux_amd_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_linux_arm_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_linux_arm_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_linux_arm_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_linux_arm_64.url] is available at [http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_linux_arm_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_macos_64.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_macos_64.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_macos_64.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_macos_64.url] is available at [http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_macos_64.url]`
* URL: http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_windows_64.exe.url
  * Node Name: `http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_windows_64.exe.url`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_windows_64.exe.url`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine/juicy_malware_windows_64.exe.url] is available at [http://host.docker.internal:3000/ftp/quarantinebackup/juicy_malware_windows_64.exe.url]`
* URL: http://host.docker.internal:3000/ftp/quarantine~
  * Node Name: `http://host.docker.internal:3000/ftp/quarantine~`
  * Method: `GET`
  * Parameter: ``
  * Attack: `http://host.docker.internal:3000/ftp/quarantine~`
  * Evidence: ``
  * Other Info: `A backup of [http://host.docker.internal:3000/ftp/quarantine] is available at [http://host.docker.internal:3000/ftp/quarantine~]`


Instances: 31

### Solution

Do not edit files in-situ on the web server, and ensure that un-necessary files (including hidden files) are removed from the web server.

### Reference


* [ https://cwe.mitre.org/data/definitions/530.html ](https://cwe.mitre.org/data/definitions/530.html)
* [ https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/02-Configuration_and_Deployment_Management_Testing/04-Review_Old_Backup_and_Unreferenced_Files_for_Sensitive_Information.html ](https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/02-Configuration_and_Deployment_Management_Testing/04-Review_Old_Backup_and_Unreferenced_Files_for_Sensitive_Information.html)


#### CWE Id: [ 530 ](https://cwe.mitre.org/data/definitions/530.html)


#### WASC Id: 34

#### Source ID: 1

### [ Bypassing 403 ](https://www.zaproxy.org/docs/alerts/40038/)



##### Medium (Medium)

### Description

Bypassing 403 endpoints may be possible, the scan rule sent a payload that caused the response to be accessible (status code 200).

* URL: http://host.docker.internal:3000/%252e/ftp/coupons_2013.md.bak
  * Node Name: `http://host.docker.internal:3000/./ftp/coupons_2013.md.bak`
  * Method: `GET`
  * Parameter: ``
  * Attack: `/%2e/ftp/coupons_2013.md.bak`
  * Evidence: ``
  * Other Info: `http://host.docker.internal:3000/ftp/coupons_2013.md.bak`
* URL: http://host.docker.internal:3000/%252e/ftp/eastere.gg
  * Node Name: `http://host.docker.internal:3000/./ftp/eastere.gg`
  * Method: `GET`
  * Parameter: ``
  * Attack: `/%2e/ftp/eastere.gg`
  * Evidence: ``
  * Other Info: `http://host.docker.internal:3000/ftp/eastere.gg`
* URL: http://host.docker.internal:3000/%252e/ftp/encrypt.pyc
  * Node Name: `http://host.docker.internal:3000/./ftp/encrypt.pyc`
  * Method: `GET`
  * Parameter: ``
  * Attack: `/%2e/ftp/encrypt.pyc`
  * Evidence: ``
  * Other Info: `http://host.docker.internal:3000/ftp/encrypt.pyc`
* URL: http://host.docker.internal:3000/%252e/ftp/package-lock.json.bak
  * Node Name: `http://host.docker.internal:3000/./ftp/package-lock.json.bak`
  * Method: `GET`
  * Parameter: ``
  * Attack: `/%2e/ftp/package-lock.json.bak`
  * Evidence: ``
  * Other Info: `http://host.docker.internal:3000/ftp/package-lock.json.bak`
* URL: http://host.docker.internal:3000/%252e/ftp/package.json.bak
  * Node Name: `http://host.docker.internal:3000/./ftp/package.json.bak`
  * Method: `GET`
  * Parameter: ``
  * Attack: `/%2e/ftp/package.json.bak`
  * Evidence: ``
  * Other Info: `http://host.docker.internal:3000/ftp/package.json.bak`
* URL: http://host.docker.internal:3000/%252e/ftp/suspicious_errors.yml
  * Node Name: `http://host.docker.internal:3000/./ftp/suspicious_errors.yml`
  * Method: `GET`
  * Parameter: ``
  * Attack: `/%2e/ftp/suspicious_errors.yml`
  * Evidence: ``
  * Other Info: `http://host.docker.internal:3000/ftp/suspicious_errors.yml`


Instances: 6

### Solution



### Reference


* [ https://www.acunetix.com/blog/articles/a-fresh-look-on-reverse-proxy-related-attacks/ ](https://www.acunetix.com/blog/articles/a-fresh-look-on-reverse-proxy-related-attacks/)
* [ https://i.blackhat.com/us-18/Wed-August-8/us-18-Orange-Tsai-Breaking-Parser-Logic-Take-Your-Path-Normalization-Off-And-Pop-0days-Out-2.pdf ](https://i.blackhat.com/us-18/Wed-August-8/us-18-Orange-Tsai-Breaking-Parser-Logic-Take-Your-Path-Normalization-Off-And-Pop-0days-Out-2.pdf)
* [ https://seclists.org/fulldisclosure/2011/Oct/273 ](https://seclists.org/fulldisclosure/2011/Oct/273)


#### CWE Id: [ 348 ](https://cwe.mitre.org/data/definitions/348.html)


#### Source ID: 1

### [ CORS Misconfiguration ](https://www.zaproxy.org/docs/alerts/40040/)



##### Medium (High)

### Description

This CORS misconfiguration could allow an attacker to perform AJAX queries to the vulnerable website from a malicious page loaded by the victim's user agent.
In order to perform authenticated AJAX queries, the server must specify the header "Access-Control-Allow-Credentials: true" and the "Access-Control-Allow-Origin" header must be set to null or the malicious page's domain. Even if this misconfiguration doesn't allow authenticated AJAX requests, unauthenticated sensitive content can still be accessed (e.g intranet websites).
A malicious page can belong to a malicious website but also a trusted website with flaws (e.g XSS, support of HTTP without TLS allowing code injection through MITM, etc).

* URL: http://host.docker.internal:3000
  * Node Name: `http://host.docker.internal:3000`
  * Method: `GET`
  * Parameter: ``
  * Attack: `origin: http://pCZROLtt.com`
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/
  * Node Name: `http://host.docker.internal:3000/`
  * Method: `GET`
  * Parameter: ``
  * Attack: `origin: http://pCZROLtt.com`
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/assets
  * Node Name: `http://host.docker.internal:3000/assets`
  * Method: `GET`
  * Parameter: ``
  * Attack: `origin: http://pCZROLtt.com`
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/chunk-DBPdFzgj.js
  * Node Name: `http://host.docker.internal:3000/chunk-DBPdFzgj.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: `origin: http://pCZROLtt.com`
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/ftp/encrypt.pyc
  * Node Name: `http://host.docker.internal:3000/ftp/encrypt.pyc`
  * Method: `GET`
  * Parameter: ``
  * Attack: `origin: http://pCZROLtt.com`
  * Evidence: ``
  * Other Info: ``

Instances: Systemic


### Solution

If a web resource contains sensitive information, the origin should be properly specified in the Access-Control-Allow-Origin header. Only trusted websites needing this resource should be specified in this header, with the most secured protocol supported.

### Reference


* [ https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/CORS ](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/CORS)
* [ https://portswigger.net/web-security/cors ](https://portswigger.net/web-security/cors)


#### CWE Id: [ 942 ](https://cwe.mitre.org/data/definitions/942.html)


#### WASC Id: 14

#### Source ID: 1

### [ Content Security Policy (CSP) Header Not Set ](https://www.zaproxy.org/docs/alerts/10038/)



##### Medium (High)

### Description

Content Security Policy (CSP) is an added layer of security that helps to detect and mitigate certain types of attacks, including Cross Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft to site defacement or distribution of malware. CSP provides a set of standard HTTP headers that allow website owners to declare approved sources of content that browsers should be allowed to load on that page — covered types are JavaScript, CSS, HTML frames, fonts, images and embeddable objects such as Java applets, ActiveX, audio and video files.

* URL: http://host.docker.internal:3000
  * Node Name: `http://host.docker.internal:3000`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/
  * Node Name: `http://host.docker.internal:3000/`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/ftp/coupons_2013.md.bak
  * Node Name: `http://host.docker.internal:3000/ftp/coupons_2013.md.bak`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/ftp/package-lock.json.bak
  * Node Name: `http://host.docker.internal:3000/ftp/package-lock.json.bak`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/sitemap.xml
  * Node Name: `http://host.docker.internal:3000/sitemap.xml`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: ``
  * Other Info: ``

Instances: Systemic


### Solution

Ensure that your web server, application server, load balancer, etc. is configured to set the Content-Security-Policy header.

### Reference


* [ https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/CSP ](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/CSP)
* [ https://cheatsheetseries.owasp.org/cheatsheets/Content_Security_Policy_Cheat_Sheet.html ](https://cheatsheetseries.owasp.org/cheatsheets/Content_Security_Policy_Cheat_Sheet.html)
* [ https://www.w3.org/TR/CSP/ ](https://www.w3.org/TR/CSP/)
* [ https://w3c.github.io/webappsec-csp/ ](https://w3c.github.io/webappsec-csp/)
* [ https://web.dev/articles/csp ](https://web.dev/articles/csp)
* [ https://caniuse.com/#feat=contentsecuritypolicy ](https://caniuse.com/#feat=contentsecuritypolicy)
* [ https://content-security-policy.com/ ](https://content-security-policy.com/)


#### CWE Id: [ 693 ](https://cwe.mitre.org/data/definitions/693.html)


#### WASC Id: 15

#### Source ID: 3

### [ Cross-Domain Misconfiguration ](https://www.zaproxy.org/docs/alerts/10098/)



##### Medium (Medium)

### Description

Web browser data loading may be possible, due to a Cross Origin Resource Sharing (CORS) misconfiguration on the web server.

* URL: http://host.docker.internal:3000/
  * Node Name: `http://host.docker.internal:3000/`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Access-Control-Allow-Origin: *`
  * Other Info: `The CORS misconfiguration on the web server permits cross-domain read requests from arbitrary third party domains, using unauthenticated APIs on this domain. Web browser implementations do not permit arbitrary third parties to read the response from authenticated APIs, however. This reduces the risk somewhat. This misconfiguration could be used by an attacker to access data that is available in an unauthenticated manner, but which uses some other form of security, such as IP address white-listing.`
* URL: http://host.docker.internal:3000/assets/public/favicon_js.ico
  * Node Name: `http://host.docker.internal:3000/assets/public/favicon_js.ico`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Access-Control-Allow-Origin: *`
  * Other Info: `The CORS misconfiguration on the web server permits cross-domain read requests from arbitrary third party domains, using unauthenticated APIs on this domain. Web browser implementations do not permit arbitrary third parties to read the response from authenticated APIs, however. This reduces the risk somewhat. This misconfiguration could be used by an attacker to access data that is available in an unauthenticated manner, but which uses some other form of security, such as IP address white-listing.`
* URL: http://host.docker.internal:3000/robots.txt
  * Node Name: `http://host.docker.internal:3000/robots.txt`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Access-Control-Allow-Origin: *`
  * Other Info: `The CORS misconfiguration on the web server permits cross-domain read requests from arbitrary third party domains, using unauthenticated APIs on this domain. Web browser implementations do not permit arbitrary third parties to read the response from authenticated APIs, however. This reduces the risk somewhat. This misconfiguration could be used by an attacker to access data that is available in an unauthenticated manner, but which uses some other form of security, such as IP address white-listing.`
* URL: http://host.docker.internal:3000/rolldown-runtime-BoHGiXSq.js
  * Node Name: `http://host.docker.internal:3000/rolldown-runtime-BoHGiXSq.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Access-Control-Allow-Origin: *`
  * Other Info: `The CORS misconfiguration on the web server permits cross-domain read requests from arbitrary third party domains, using unauthenticated APIs on this domain. Web browser implementations do not permit arbitrary third parties to read the response from authenticated APIs, however. This reduces the risk somewhat. This misconfiguration could be used by an attacker to access data that is available in an unauthenticated manner, but which uses some other form of security, such as IP address white-listing.`
* URL: http://host.docker.internal:3000/styles.css
  * Node Name: `http://host.docker.internal:3000/styles.css`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Access-Control-Allow-Origin: *`
  * Other Info: `The CORS misconfiguration on the web server permits cross-domain read requests from arbitrary third party domains, using unauthenticated APIs on this domain. Web browser implementations do not permit arbitrary third parties to read the response from authenticated APIs, however. This reduces the risk somewhat. This misconfiguration could be used by an attacker to access data that is available in an unauthenticated manner, but which uses some other form of security, such as IP address white-listing.`

Instances: Systemic


### Solution

Ensure that sensitive data is not available in an unauthenticated manner (using IP address white-listing, for instance).
Configure the "Access-Control-Allow-Origin" HTTP header to a more restrictive set of domains, or remove all CORS headers entirely, to allow the web browser to enforce the Same Origin Policy (SOP) in a more restrictive manner.

### Reference


* [ https://vulncat.fortify.com/en/detail?category=HTML5&subcategory=Overly%20Permissive%20CORS%20Policy ](https://vulncat.fortify.com/en/detail?category=HTML5&subcategory=Overly%20Permissive%20CORS%20Policy)


#### CWE Id: [ 264 ](https://cwe.mitre.org/data/definitions/264.html)


#### WASC Id: 14

#### Source ID: 3

### [ HTTP Only Site ](https://www.zaproxy.org/docs/alerts/10106/)



##### Medium (Medium)

### Description

The site is only served under HTTP and not HTTPS.

* URL: http://host.docker.internal:3000/ftp/
  * Node Name: `https://host.docker.internal:3000/ftp/`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: ``
  * Other Info: `Failed to connect.
ZAP attempted to connect via: https://host.docker.internal:3000/ftp/`


Instances: 1

### Solution

Configure your web or application server to use SSL (https).

### Reference


* [ https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html ](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html)
* [ https://letsencrypt.org/ ](https://letsencrypt.org/)


#### CWE Id: [ 311 ](https://cwe.mitre.org/data/definitions/311.html)


#### WASC Id: 4

#### Source ID: 1

### [ Cross-Origin-Embedder-Policy Header Missing or Invalid ](https://www.zaproxy.org/docs/alerts/90004/)



##### Low (Medium)

### Description

Cross-Origin-Embedder-Policy header is a response header that prevents a document from loading any cross-origin resources that don't explicitly grant the document permission (using CORP or CORS).

* URL: http://host.docker.internal:3000
  * Node Name: `http://host.docker.internal:3000`
  * Method: `GET`
  * Parameter: `Cross-Origin-Embedder-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/
  * Node Name: `http://host.docker.internal:3000/`
  * Method: `GET`
  * Parameter: `Cross-Origin-Embedder-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:52:13
  * Node Name: `http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:52:13`
  * Method: `GET`
  * Parameter: `Cross-Origin-Embedder-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:68:18
  * Node Name: `http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:68:18`
  * Method: `GET`
  * Parameter: `Cross-Origin-Embedder-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/sitemap.xml
  * Node Name: `http://host.docker.internal:3000/sitemap.xml`
  * Method: `GET`
  * Parameter: `Cross-Origin-Embedder-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``

Instances: Systemic


### Solution

Ensure that the application/web server sets the Cross-Origin-Embedder-Policy header appropriately, and that it sets the Cross-Origin-Embedder-Policy header to 'require-corp' for documents.
If possible, ensure that the end user uses a standards-compliant and modern web browser that supports the Cross-Origin-Embedder-Policy header (https://caniuse.com/mdn-http_headers_cross-origin-embedder-policy).

### Reference


* [ https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cross-Origin-Embedder-Policy ](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cross-Origin-Embedder-Policy)


#### CWE Id: [ 693 ](https://cwe.mitre.org/data/definitions/693.html)


#### WASC Id: 14

#### Source ID: 3

### [ Cross-Origin-Opener-Policy Header Missing or Invalid ](https://www.zaproxy.org/docs/alerts/90004/)



##### Low (Medium)

### Description

Cross-Origin-Opener-Policy header is a response header that allows a site to control if others included documents share the same browsing context. Sharing the same browsing context with untrusted documents might lead to data leak.

* URL: http://host.docker.internal:3000
  * Node Name: `http://host.docker.internal:3000`
  * Method: `GET`
  * Parameter: `Cross-Origin-Opener-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/
  * Node Name: `http://host.docker.internal:3000/`
  * Method: `GET`
  * Parameter: `Cross-Origin-Opener-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:52:13
  * Node Name: `http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:52:13`
  * Method: `GET`
  * Parameter: `Cross-Origin-Opener-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:68:18
  * Node Name: `http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:68:18`
  * Method: `GET`
  * Parameter: `Cross-Origin-Opener-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/sitemap.xml
  * Node Name: `http://host.docker.internal:3000/sitemap.xml`
  * Method: `GET`
  * Parameter: `Cross-Origin-Opener-Policy`
  * Attack: ``
  * Evidence: ``
  * Other Info: ``

Instances: Systemic


### Solution

Ensure that the application/web server sets the Cross-Origin-Opener-Policy header appropriately, and that it sets the Cross-Origin-Opener-Policy header to 'same-origin' for documents.
'same-origin-allow-popups' is considered as less secured and should be avoided.
If possible, ensure that the end user uses a standards-compliant and modern web browser that supports the Cross-Origin-Opener-Policy header (https://caniuse.com/mdn-http_headers_cross-origin-opener-policy).

### Reference


* [ https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cross-Origin-Opener-Policy ](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Cross-Origin-Opener-Policy)


#### CWE Id: [ 693 ](https://cwe.mitre.org/data/definitions/693.html)


#### WASC Id: 14

#### Source ID: 3

### [ Dangerous JS Functions ](https://www.zaproxy.org/docs/alerts/10110/)



##### Low (Low)

### Description

A dangerous JS function seems to be in use that would leave the site vulnerable.

* URL: http://host.docker.internal:3000/chunk-Cv2YgWUq.js
  * Node Name: `http://host.docker.internal:3000/chunk-Cv2YgWUq.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `bypassSecurityTrustHtml(`
  * Other Info: ``
* URL: http://host.docker.internal:3000/main.js
  * Node Name: `http://host.docker.internal:3000/main.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `bypassSecurityTrustHtml(`
  * Other Info: ``


Instances: 2

### Solution

See the references for security advice on the use of these functions.

### Reference


* [ https://v17.angular.io/guide/security ](https://v17.angular.io/guide/security)


#### CWE Id: [ 749 ](https://cwe.mitre.org/data/definitions/749.html)


#### Source ID: 3

### [ Deprecated Feature Policy Header Set ](https://www.zaproxy.org/docs/alerts/10063/)



##### Low (Medium)

### Description

The header has now been renamed to Permissions-Policy.

* URL: http://host.docker.internal:3000
  * Node Name: `http://host.docker.internal:3000`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Feature-Policy`
  * Other Info: ``
* URL: http://host.docker.internal:3000/
  * Node Name: `http://host.docker.internal:3000/`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Feature-Policy`
  * Other Info: ``
* URL: http://host.docker.internal:3000/chunk-DBPdFzgj.js
  * Node Name: `http://host.docker.internal:3000/chunk-DBPdFzgj.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Feature-Policy`
  * Other Info: ``
* URL: http://host.docker.internal:3000/polyfills.js
  * Node Name: `http://host.docker.internal:3000/polyfills.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Feature-Policy`
  * Other Info: ``
* URL: http://host.docker.internal:3000/rolldown-runtime-BoHGiXSq.js
  * Node Name: `http://host.docker.internal:3000/rolldown-runtime-BoHGiXSq.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `Feature-Policy`
  * Other Info: ``

Instances: Systemic


### Solution

Ensure that your web server, application server, load balancer, etc. is configured to set the Permissions-Policy header instead of the Feature-Policy header.

### Reference


* [ https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Permissions-Policy ](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Permissions-Policy)
* [ https://scotthelme.co.uk/goodbye-feature-policy-and-hello-permissions-policy/ ](https://scotthelme.co.uk/goodbye-feature-policy-and-hello-permissions-policy/)


#### CWE Id: [ 16 ](https://cwe.mitre.org/data/definitions/16.html)


#### WASC Id: 15

#### Source ID: 3

### [ Modern Web Application ](https://www.zaproxy.org/docs/alerts/10109/)



##### Informational (Medium)

### Description

The application appears to be a modern web application. If you need to explore it automatically then the Client Spider may well be more effective than the standard one.

* URL: http://host.docker.internal:3000
  * Node Name: `http://host.docker.internal:3000`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `<script>
    window.addEventListener("load", function(){
      window.cookieconsent.initialise({
        "palette": {
          "popup": { "background": "var(--theme-primary)", "text": "var(--theme-text)" },
          "button": { "background": "var(--theme-accent)", "text": "var(--theme-text)" }
        },
        "theme": "classic",
        "position": "bottom-right",
        "content": { "message": "This website uses fruit cookies to ensure you get the juiciest tracking experience.", "dismiss": "Me want it!", "link": "But me wait!", "href": "https://www.youtube.com/watch?v=9PnbKL3wuH4" }
      })});
  </script>`
  * Other Info: `No links have been found while there are scripts, which is an indication that this is a modern web application.`
* URL: http://host.docker.internal:3000/
  * Node Name: `http://host.docker.internal:3000/`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `<script>
    window.addEventListener("load", function(){
      window.cookieconsent.initialise({
        "palette": {
          "popup": { "background": "var(--theme-primary)", "text": "var(--theme-text)" },
          "button": { "background": "var(--theme-accent)", "text": "var(--theme-text)" }
        },
        "theme": "classic",
        "position": "bottom-right",
        "content": { "message": "This website uses fruit cookies to ensure you get the juiciest tracking experience.", "dismiss": "Me want it!", "link": "But me wait!", "href": "https://www.youtube.com/watch?v=9PnbKL3wuH4" }
      })});
  </script>`
  * Other Info: `No links have been found while there are scripts, which is an indication that this is a modern web application.`
* URL: http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:52:13
  * Node Name: `http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:52:13`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `<script>
    window.addEventListener("load", function(){
      window.cookieconsent.initialise({
        "palette": {
          "popup": { "background": "var(--theme-primary)", "text": "var(--theme-text)" },
          "button": { "background": "var(--theme-accent)", "text": "var(--theme-text)" }
        },
        "theme": "classic",
        "position": "bottom-right",
        "content": { "message": "This website uses fruit cookies to ensure you get the juiciest tracking experience.", "dismiss": "Me want it!", "link": "But me wait!", "href": "https://www.youtube.com/watch?v=9PnbKL3wuH4" }
      })});
  </script>`
  * Other Info: `No links have been found while there are scripts, which is an indication that this is a modern web application.`
* URL: http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:68:18
  * Node Name: `http://host.docker.internal:3000/juice-shop/build/routes/fileServer.js:68:18`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `<script>
    window.addEventListener("load", function(){
      window.cookieconsent.initialise({
        "palette": {
          "popup": { "background": "var(--theme-primary)", "text": "var(--theme-text)" },
          "button": { "background": "var(--theme-accent)", "text": "var(--theme-text)" }
        },
        "theme": "classic",
        "position": "bottom-right",
        "content": { "message": "This website uses fruit cookies to ensure you get the juiciest tracking experience.", "dismiss": "Me want it!", "link": "But me wait!", "href": "https://www.youtube.com/watch?v=9PnbKL3wuH4" }
      })});
  </script>`
  * Other Info: `No links have been found while there are scripts, which is an indication that this is a modern web application.`
* URL: http://host.docker.internal:3000/sitemap.xml
  * Node Name: `http://host.docker.internal:3000/sitemap.xml`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `<script>
    window.addEventListener("load", function(){
      window.cookieconsent.initialise({
        "palette": {
          "popup": { "background": "var(--theme-primary)", "text": "var(--theme-text)" },
          "button": { "background": "var(--theme-accent)", "text": "var(--theme-text)" }
        },
        "theme": "classic",
        "position": "bottom-right",
        "content": { "message": "This website uses fruit cookies to ensure you get the juiciest tracking experience.", "dismiss": "Me want it!", "link": "But me wait!", "href": "https://www.youtube.com/watch?v=9PnbKL3wuH4" }
      })});
  </script>`
  * Other Info: `No links have been found while there are scripts, which is an indication that this is a modern web application.`

Instances: Systemic


### Solution

This is an informational alert and so no changes are required.

### Reference




#### Source ID: 3

### [ Storable and Cacheable Content ](https://www.zaproxy.org/docs/alerts/10049/)



##### Informational (Medium)

### Description

The response contents are storable by caching components such as proxy servers, and may be retrieved directly from the cache, rather than from the origin server by the caching servers, in response to similar requests from other users. If the response data is sensitive, personal or user-specific, this may result in sensitive information being leaked. In some cases, this may even result in a user gaining complete control of the session of another user, depending on the configuration of the caching components in use in their environment. This is primarily an issue where "shared" caching servers such as "proxy" caches are configured on the local network. This configuration is typically found in corporate or educational environments, for instance.

* URL: http://host.docker.internal:3000/robots.txt
  * Node Name: `http://host.docker.internal:3000/robots.txt`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: ``
  * Other Info: `In the absence of an explicitly specified caching lifetime directive in the response, a liberal lifetime heuristic of 1 year was assumed. This is permitted by rfc7234.`


Instances: 1

### Solution

Validate that the response does not contain sensitive, personal or user-specific information. If it does, consider the use of the following HTTP response headers, to limit, or prevent the content being stored and retrieved from the cache by another user:
Cache-Control: no-cache, no-store, must-revalidate, private
Pragma: no-cache
Expires: 0
This configuration directs both HTTP 1.0 and HTTP 1.1 compliant caching servers to not store the response, and to not retrieve the response (without validation) from the cache, in response to a similar request.

### Reference


* [ https://datatracker.ietf.org/doc/html/rfc7234 ](https://datatracker.ietf.org/doc/html/rfc7234)
* [ https://datatracker.ietf.org/doc/html/rfc7231 ](https://datatracker.ietf.org/doc/html/rfc7231)
* [ https://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html ](https://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html)


#### CWE Id: [ 524 ](https://cwe.mitre.org/data/definitions/524.html)


#### WASC Id: 13

#### Source ID: 3

### [ Storable but Non-Cacheable Content ](https://www.zaproxy.org/docs/alerts/10049/)



##### Informational (Medium)

### Description

The response contents are storable by caching components such as proxy servers, but will not be retrieved directly from the cache, without validating the request upstream, in response to similar requests from other users.

* URL: http://host.docker.internal:3000/
  * Node Name: `http://host.docker.internal:3000/`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `max-age=0`
  * Other Info: ``
* URL: http://host.docker.internal:3000/assets/public/favicon_js.ico
  * Node Name: `http://host.docker.internal:3000/assets/public/favicon_js.ico`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `max-age=0`
  * Other Info: ``
* URL: http://host.docker.internal:3000/chunk-DBPdFzgj.js
  * Node Name: `http://host.docker.internal:3000/chunk-DBPdFzgj.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `max-age=0`
  * Other Info: ``
* URL: http://host.docker.internal:3000/polyfills.js
  * Node Name: `http://host.docker.internal:3000/polyfills.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `max-age=0`
  * Other Info: ``
* URL: http://host.docker.internal:3000/rolldown-runtime-BoHGiXSq.js
  * Node Name: `http://host.docker.internal:3000/rolldown-runtime-BoHGiXSq.js`
  * Method: `GET`
  * Parameter: ``
  * Attack: ``
  * Evidence: `max-age=0`
  * Other Info: ``

Instances: Systemic


### Solution



### Reference


* [ https://datatracker.ietf.org/doc/html/rfc7234 ](https://datatracker.ietf.org/doc/html/rfc7234)
* [ https://datatracker.ietf.org/doc/html/rfc7231 ](https://datatracker.ietf.org/doc/html/rfc7231)
* [ https://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html ](https://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html)


#### CWE Id: [ 524 ](https://cwe.mitre.org/data/definitions/524.html)


#### WASC Id: 13

#### Source ID: 3

### [ User Agent Fuzzer ](https://www.zaproxy.org/docs/alerts/10104/)



##### Informational (Medium)

### Description

Check for differences in response based on fuzzed User Agent (eg. mobile sites, access as a Search Engine Crawler). Compares the response statuscode and the hashcode of the response body with the original response.

* URL: http://host.docker.internal:3000/assets
  * Node Name: `http://host.docker.internal:3000/assets`
  * Method: `GET`
  * Parameter: `Header User-Agent`
  * Attack: `Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)`
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/assets
  * Node Name: `http://host.docker.internal:3000/assets`
  * Method: `GET`
  * Parameter: `Header User-Agent`
  * Attack: `Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1)`
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/assets/public
  * Node Name: `http://host.docker.internal:3000/assets/public`
  * Method: `GET`
  * Parameter: `Header User-Agent`
  * Attack: `Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)`
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/assets/public
  * Node Name: `http://host.docker.internal:3000/assets/public`
  * Method: `GET`
  * Parameter: `Header User-Agent`
  * Attack: `Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)`
  * Evidence: ``
  * Other Info: ``
* URL: http://host.docker.internal:3000/assets/public
  * Node Name: `http://host.docker.internal:3000/assets/public`
  * Method: `GET`
  * Parameter: `Header User-Agent`
  * Attack: `Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1)`
  * Evidence: ``
  * Other Info: ``

Instances: Systemic


### Solution



### Reference


* [ https://owasp.org/www-project-web-security-testing-guide/ ](https://owasp.org/www-project-web-security-testing-guide/)



#### Source ID: 1


