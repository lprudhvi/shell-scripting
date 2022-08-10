import subprocess
image=input("enter the image name:")
container=input("enter the container name:")
ports=input("enter the port number:")
detach=input("do you want o run in detache mode:(y/n)")
if detach == 'y':
    subprocess.call("docker run --name %s -p %s -d %s " %(container,ports,image),shell=True)
elif detach =='n':
    subprocess.call("docker run --name %s -p %s %s " %(container,ports,image),shell=True)
else :
    print("invalid option")
