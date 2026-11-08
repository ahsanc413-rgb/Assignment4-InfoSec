# Undo Assignment 4 firewall changes (run AS ADMINISTRATOR)
Remove-NetFirewallRule -DisplayName "A4*"
Set-NetFirewallProfile -Profile Domain,Private,Public -LogBlocked False
Write-Host "Assignment 4 rules removed and dropped-packet logging turned off." -ForegroundColor Green
