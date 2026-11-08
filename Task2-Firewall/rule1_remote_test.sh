echo "[WSL VM] my IP: $(ip -4 addr show eth0 | grep -o "inet [0-9.]*" | cut -d" " -f2)"
for p in 23 2323; do echo "[WSL VM] telnet/nc to Windows host 172.30.144.1 port $p:"; nc -zv -w 5 172.30.144.1 $p 2>&1 && echo "   RESULT: CONNECTED (allowed)" || echo "   RESULT: TIMED OUT (packet dropped by firewall)"; done
