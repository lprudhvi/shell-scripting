import subprocess
subprocess.call("free -m |grep Mem |awk '{print $3}'>file33",shell=True)
f=open("file33","r")
mem=int(f.read())
if mem > 180 and mem < 200:
    subprocess.call("docker service scale webserver=3",shell=True)
elif mem > 200 and mem < 300:
    subprocess.call("docker service scale webserver=5",shell=True)
else :
    print("insufficent memory")

