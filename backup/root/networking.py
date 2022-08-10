import subprocess
i=1
while i<= 5:
    subprocess.call("docker network create --driver bridge sai%d"%i,shell=True)
    subprocess.call("docker run --name container%d -d -P --network sai%d busybox"%(i,i),shell=True)
    i =i+1
