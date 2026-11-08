# ============================================================
#  Assignment 4 - Task 2 : Test the firewall rules
#  Run in PowerShell AS ADMINISTRATOR (needed to read the firewall log):
#     powershell -ExecutionPolicy Bypass -File .\2_test_rules.ps1
#  Output is also saved to test_results.txt
# ============================================================
$out = Join-Path $PSScriptRoot "test_results.txt"
Start-Transcript -Path $out -Force | Out-Null

Write-Host "`n===== Rules currently applied =====" -ForegroundColor Cyan
Get-NetFirewallRule -DisplayName "A4*" | Format-Table DisplayName, Direction, Action, Enabled -AutoSize

# ---------- Test Rule 2: localhost -> 8080 should be ALLOWED ----------
Write-Host "`n===== TEST Rule 2: localhost access to port 8080 =====" -ForegroundColor Cyan
$listener = [System.Net.Sockets.TcpListener]::new([System.Net.IPAddress]::Loopback, 8080)
$listener.Start()
$r = Test-NetConnection -ComputerName 127.0.0.1 -Port 8080 -WarningAction SilentlyContinue
"127.0.0.1 -> port 8080  TcpTestSucceeded = $($r.TcpTestSucceeded)   (expected: True)"
$listener.Stop()

# ---------- Test Rule 1: port 23 from another machine should be BLOCKED ----------
# The WSL2 virtual machine acts as a "remote" host (its traffic passes through
# the Windows firewall on the vEthernet (WSL) adapter). A listener runs on
# port 23 and on port 2323 (control); only 23 should be blocked.
Write-Host "`n===== TEST Rule 1: Telnet (port 23) from another host (WSL VM) =====" -ForegroundColor Cyan
$py = "$env:LOCALAPPDATA\Programs\Python\Python312\python.exe"
if (-not (Test-Path $py)) { $py = "python" }
$listener = Start-Process $py -ArgumentList "`"$PSScriptRoot\rule1_listener.py`"" -PassThru -WindowStyle Hidden `
            -RedirectStandardOutput "$PSScriptRoot\listener_log.txt"
Start-Sleep 3
$distro = "docker-desktop"
Get-Content "$PSScriptRoot\rule1_remote_test.sh" -Raw | wsl -d $distro sh
"(expected: port 23 TIMED OUT = blocked by Rule 1, port 2323 CONNECTED = control)"
$listener.WaitForExit(); Get-Content "$PSScriptRoot\listener_log.txt"
Start-Sleep 3

# ---------- Test Rule 3: dropped packets are logged ----------
Write-Host "`n===== TEST Rule 3: Dropped packets in firewall log =====" -ForegroundColor Cyan
$log = "$env:SystemRoot\System32\LogFiles\Firewall\pfirewall.log"
if (Test-Path $log) {
    "Log file: $log"
    "--- Last DROP entries for port 23 ---"
    Get-Content $log -Tail 3000 | Select-String "DROP TCP .* 23 " | Select-Object -Last 10 | ForEach-Object { $_.Line }
    "--- Last 10 DROP entries (any) ---"
    Get-Content $log -Tail 500 | Select-String "DROP" | Select-Object -Last 10 | ForEach-Object { $_.Line }
} else {
    "Log file not created yet - wait a minute and run again."
}

Stop-Transcript | Out-Null
Write-Host "`nSaved results to $out" -ForegroundColor Green
