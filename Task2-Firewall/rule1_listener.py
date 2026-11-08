import socket,time,sys,threading
def serve(port):
    s=socket.socket(); s.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
    s.bind(("0.0.0.0",port)); s.listen(5); s.settimeout(1)
    print(f"[listener] {sys.executable.split(chr(92))[-2]} listening on 0.0.0.0:{port}",flush=True)
    end=time.time()+45
    while time.time()<end:
        try: c,a=s.accept(); print(f"[listener] port {port}: ACCEPTED connection from {a[0]}",flush=True); c.close()
        except socket.timeout: pass
ts=[threading.Thread(target=serve,args=(p,)) for p in (23,2323)]
[t.start() for t in ts]; [t.join() for t in ts]
