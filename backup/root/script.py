import subprocess
subprocess.call('docker rm -f $(docker ps -a|grep alpine| cut -d " " -f 1)',shell=True)
