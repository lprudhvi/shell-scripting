import subprocess
subprocess.call('docker ps -a|grep alpine|cut -d " " -f 1 >file12',shell=True)
f1=open("file12","r")
con_id=f1.readlines()
i=0
while i<len(con_id):
    id=con_id[i]
    subprocess.call("docker rm -f %s"%id,shell=True)
    i=i+1

