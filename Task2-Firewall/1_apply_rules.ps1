# ============================================================
#  Assignment 4 - Task 2 : Basic Firewall Rules (Windows Defender Firewall)
#  Run in PowerShell AS ADMINISTRATOR:
#     Right-click PowerShell > Run as administrator
#     cd "$env:USERPROFILE\OneDrive\Desktop\Assignment4-InfoSec\Task2-Firewall"
#     powershell -ExecutionPolicy Bypass -File .\1_apply_rules.ps1
# ============================================================

# ---- Rule 1: Block incoming traffic on port 23 (Telnet) -----------------
New-NetFirewallRule -DisplayName "A4 Rule1 - Block Inbound Telnet (TCP 23)" `
    -Direction Inbound -Protocol TCP -LocalPort 23 -Action Block -Profile Any `
    -Description "Blocks all incoming Telnet connections (unencrypted remote login)."

# ---- Rule 2: Allow localhost (127.0.0.1) access to port 8080 ------------
New-NetFirewallRule -DisplayName "A4 Rule2 - Allow Localhost to TCP 8080" `
    -Direction Inbound -Protocol TCP -LocalPort 8080 -RemoteAddress 127.0.0.1 `
    -Action Allow -Profile Any `
    -Description "Allows only the local machine (127.0.0.1) to reach the dev server on port 8080."

# ---- Rule 3: Log dropped incoming packets --------------------------------
Set-NetFirewallProfile -Profile Domain,Private,Public `
    -LogBlocked True `
    -LogFileName "%SystemRoot%\System32\LogFiles\Firewall\pfirewall.log" `
    -LogMaxSizeKilobytes 4096

Write-Host "`n=== Rules applied ===" -ForegroundColor Green
Get-NetFirewallRule -DisplayName "A4*" |
    Format-Table DisplayName, Direction, Action, Enabled -AutoSize
Get-NetFirewallRule -DisplayName "A4*" | Get-NetFirewallPortFilter |
    Format-Table Protocol, LocalPort -AutoSize
Get-NetFirewallProfile | Format-Table Name, Enabled, LogBlocked, LogFileName -AutoSize
