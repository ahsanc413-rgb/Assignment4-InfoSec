# Assignment 4 – Information Security (Practical Tasks)

**Student:** Muhammad Ahsan Ashfaq  
**Roll No:** 03-134231-036  
**Course:** Information Security – BSCS 8 · Bahria University Lahore Campus  
**CLO 3:** Identify appropriate techniques to tackle and solve problems in information security.

| Task | Tool used | Target |
|---|---|---|
| Task 1 – Scan a vulnerable web app | **OWASP ZAP** (Docker image `zaproxy/zap-stable`) | **OWASP Juice Shop** running locally at `http://localhost:3000` (Docker) |
| Task 2 – Basic firewall rules | **Windows Defender Firewall with Advanced Security** (PowerShell `NetSecurity` cmdlets) | Local Windows machine |

The full report with screenshots is in **`Assignment4_Report.docx`**.

---

## Folder structure
```
Assignment4-InfoSec/
├── Assignment4_Report.docx       # Final report (submit this)
├── README.md
├── Task1-WebScan/
│   ├── run_scan.bat              # Starts Juice Shop + runs the ZAP scan
│   ├── zap_report.html           # Full ZAP report (open in browser)
│   ├── zap_report.json           # Machine-readable results
│   └── screenshots/
└── Task2-Firewall/
    ├── 1_apply_rules.ps1         # Creates the 3 firewall rules (run as Admin)
    ├── 2_test_rules.ps1          # Tests the rules and saves test_results.txt
    ├── 3_remove_rules.ps1        # Undoes all changes
    └── screenshots/
```

---

## Task 1 – How to reproduce
**Requirements:** Docker Desktop (running).

1. Start the vulnerable app:
   ```
   docker run -d --name juice-shop -p 3000:3000 bkimminich/juice-shop
   ```
   Open http://localhost:3000 to check that it is running.
2. Run the OWASP ZAP scan (spider + passive scan + active scan):
   ```
   docker run --rm -v "%cd%\Task1-WebScan:/zap/wrk" -t zaproxy/zap-stable zap-full-scan.py -t http://host.docker.internal:3000 -r zap_report.html -J zap_report.json -m 3 -T 20
   ```
   Or just double-click **`Task1-WebScan\run_scan.bat`**.
3. Open `Task1-WebScan\zap_report.html` to see the alerts.
4. Stop the app when finished:
   ```
   docker rm -f juice-shop
   ```

## Task 2 – How to reproduce
1. Open **PowerShell as Administrator** (Start → type PowerShell → right-click → *Run as administrator*).
2. Go to the folder:
   ```
   cd "$env:USERPROFILE\OneDrive\Desktop\Assignment4-InfoSec\Task2-Firewall"
   ```
3. Apply the rules:
   ```
   powershell -ExecutionPolicy Bypass -File .\1_apply_rules.ps1
   ```
4. Test the rules (results are saved to `test_results.txt`):
   ```
   powershell -ExecutionPolicy Bypass -File .\2_test_rules.ps1
   ```
5. View the rules in the GUI: press `Win + R`, type `wf.msc` and press Enter, then open **Inbound Rules** and look for the rules starting with "A4".
6. When finished, remove everything:
   ```
   powershell -ExecutionPolicy Bypass -File .\3_remove_rules.ps1
   ```

### The three rules
| # | Rule | Command |
|---|---|---|
| 1 | Block inbound Telnet (TCP 23) | `New-NetFirewallRule -DisplayName "A4 Rule1 - Block Inbound Telnet (TCP 23)" -Direction Inbound -Protocol TCP -LocalPort 23 -Action Block` |
| 2 | Allow localhost → TCP 8080 | `New-NetFirewallRule -DisplayName "A4 Rule2 - Allow Localhost to TCP 8080" -Direction Inbound -Protocol TCP -LocalPort 8080 -RemoteAddress 127.0.0.1 -Action Allow` |
| 3 | Log dropped packets | `Set-NetFirewallProfile -Profile Domain,Private,Public -LogBlocked True -LogFileName %SystemRoot%\System32\LogFiles\Firewall\pfirewall.log` |

> ⚠️ For educational use only. Only scan applications you own or have permission to test.
