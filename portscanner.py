import socket
import time
import sys
import threading
from queue import Queue
#Author: aKa slowkep
socket.setdefaulttimeout(1)
print_lock = threading.Lock()

if len(sys.argv) == 2:
	target = socket.gethostbyname(sys.argv[1])
else:
	print("Argumento invalido.")
	print("Syntax: python3 scanner.py <ip>")
	
def portscan(port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try:
        con = s.connect((target, port))
        with print_lock:
            print('Port', port, 'is open!')
        con.close()
    except:
        pass

def threader():
    while True:
        worker = q.get()
        portscan(worker)
        q.task_done()

q = Queue()
startTime = time.time()

for x in range(100):
    t = threading.Thread(target=threader)
    t.daemon = True
    t.start()

for worker in range(1, 65536):
    q.put(worker)

q.join()

print('Time taken:', time.time() - startTime)
