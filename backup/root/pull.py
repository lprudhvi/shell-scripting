import subprocess
image=input("enter the image name to be deleted :")
subprocess.call("docker rmi %s" %image,shell=True)
