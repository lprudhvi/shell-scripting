import subprocess
delete=input("enter the container to be deeleted:")
subprocess.call(" docker rm -f %s" %delete,shell=True)
