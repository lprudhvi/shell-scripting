aws --version
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -LO  https://github.com/kubernetes/kops/releases/download/1.15.0/kops-linux-amd64)
ls
 chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/sbin/kops
aws s3 mb s3://clusters.dev.sai.in
 export KOPS_STATE_STORE=s3://clusters.dev.sai.in
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/sbin/kubectl
ssh-keygen
yum install docker -y
vi /etc/profile
kops create cluster --zones=us-east-1b clusters.dev.sai.in --dns-zone=sai.in --dns private
kops edit ig --name=clusters.dev.sai.in nodes
kops edit ig --name=clusters.dev.sai.in master-us-east-1b
kops update cluster --name clusters.dev.sai.in --yes
kops validate cluster
kubectl get nodes
kubectl create deployment dep1 --image=httpd
kubectl get deployment -o wide
kubectl get pods
kubectl scale deployment dep1 --replicas=2
kubectl get pods
kubectl get pods -o wide
kubectl get nodes
kops edit ig --name=clusters.dev.sai.in nodes
kubectl get nodes
kubectl expose deployment dep1 --type=LoadBalancer
kubectl expose deployment dep1 --type=LoadBalancer --port=80 --target-port=80
kubectl get service
kubectl describe service dep1
kubectl get nodes
kubectl get namespaces
kubectl create namespace dev
kubectl create namespace test
kubectl get namespaces
 kubectl config current-context  
kubectl config set-context clusters.dev.sai.in  --namespace dev
kubectl config view --minify | grep namespace:
kubectl get deployments
kubectl config set-context clusters.dev.sai.in  --namespace default
kubectl get deployments
exit
kubectl get deployments
kubectl get deployments --namespace=dev
kubectl get deployments --all-namespaces
kubectl delete deployments
kubectl delete deployments --namespace=default
kubectl delete deployments dev1
history
kubectl delete deployments dep1
history
vi pv.yml
vi vpc.yml
vi pod-vpc.yml
kubectl apply -f pv.yml 
kubectl get pv
kubectl apply -f vpc.yml 
kubectl get vpc
kubectl get pvc
kubectl apply -f pod-vpc.yml 
kubectl get pods
kubectl get pods -o wide
vi statefulset.yml
kubectl get vpc
vi vpc.yml
kubectl apply -f vpc.yml 
kubectl apply -f statefulset.yml 
vi statefulset.yml
rm statefulset.yml 
vi statefulset.yml
vi service.yml
vi statefulset.yml 
kubectl apply -f vpc.yml 
kubectl apply -f statefulset.yml 
kubectl apply -f service.yml 
kubectl apply -f statefulset.yml 
vi statefulset.yml 
kubectl get all
vi volume.yml
kubectl apply -f volume.yml 
kubectl get pods
kubectl get all
kubectl delete service --all
kubectl delete pods all
kubectl delete pods --all
kops delete cluster  --yes
history > txt
ls
vi txt
kops delete cluster --name=clusters.dev.sai.in  --yes
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -LO  https://github.com/kubernetes/kops/releases/download/1.15.0/kops-linux-amd64)
ls
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/sbin/kops
aws s3 mb s3://clusters.dev.sai.in
export KOPS_STATE_STORE=s3://clusters.dev.sai.in
vi /etc/profile
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/sbin/kubectl
ssh-keygen
yum install docker -y
kops create cluster --zones=us-east-1b clusters.dev.sai.in --dns-zone=sai.in --dns private
kops edit ig --name=clusters.dev.sai.in master-us-east-1b
kops edit ig --name=clusters.dev.sai.in nodes
kops update cluster --name clusters.dev.sai.in --yes
 kops validate cluster
 kubectl get nodes --show-labels
kubectl get nodes
 kops validate cluster
ssh -i ~/.ssh/id_rsa admin@api.clusters.dev.sai.in
kops delete cluster --name=clusters.dev.sai.in  --yes
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -LO  https://github.com/kubernetes/kops/releases/download/1.15.0/kops-linux-amd64)
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/sbin/kops
aws s3 mb s3://clusters.dev.sai.in
export KOPS_STATE_STORE=s3://clusters.dev.sai.in
vi /etc/profile
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/sbin/kubectl
kops create cluster --zones=us-east-1b clusters.dev.sai.in --dns-zone=sai.in --dns private
kops edit ig --name=clusters.dev.sai.in nodes
kops edit ig --name=clusters.dev.sai.in mast                                                                                                             er-us-east-1b
kops edit ig --name=clusters.dev.sai.in master-us-east-1b
kops update cluster --name clusters.dev.sai.in --yes
kops validate cluster
ssh -i ~/.ssh/id_rsa admin@api.clusters.dev.sai.in
ssh-keygen
ssh -i ~/.ssh/id_rsa admin@api.clusters.dev.sai.in
cd /root/,ssh
cd /root/.ssh
ls
vi id_rsa.pub 
/root/.ssh/known_hosts
vi id_rsa.pub 
cd /root/.ssh/known_hosts
vi /root/.ssh/known_hosts
ssh -i ~/.ssh/id_rsa admin@api.clusters.dev.sai.in
vi /root/.ssh/known_hosts
ssh -i ~/.ssh/id_rsa admin@api.clusters.dev.sai.in
history
cd
helm version
kops delete cluster --name=clusters.dev.sai.in  --yes
python3 --version
vi pull.py
ls -l
python pull.py 
docker --version
systemctl status docker
systemctl start docker
systemctl status docker
python pull.py 
vim pull.py 
python pull.py 
vim pull.py 
python pull.py 
vim pull.py 
python pull.py 
vim pull.py 
python pull.py 
vim pull.py 
python3 pull.py 
vim pull.py 
python3 pull.py 
vim pull.py 
vim container.py
python3 container.py 
vim container.py
vim deletion.py
python3 deletion.py 

vim deletion.py
vim networking.py
python3 networking.py 
docker container ls
docker inspect sai1
docker inspect container1
docker inspect container2
docker rm -f $(docker ps -aq)
docker container ls
ls
systemctl start docker
systemctl status docker
docker run -d -P tomcat
docker run -d -P alpine
docker run -d -P httpd
docker run -d -P alpine
docker run -d -P httpd
docker container ls
docker run -d -P httpd
docker run -d -P tomcat
docker container ls
docker run -d -P httpd
docker container ls
docker container ls|grep httpd
docker ps -a
docker ps -a|grep httpd-foreground
docker ps -a|grep httpd-foreground| cut -d " " -f 1
docker rm -f ( docker ps -a|grep httpd-foreground| cut -d " " -f 1
docker rm -f (docker ps -a|grep httpd-foreground| cut -d " " -f 1)
docker rm -f $(docker ps -a|grep httpd-foreground| cut -d " " -f 1)
vim script.py
python3 script.py 
vim script.py
python3 script.py 
docker container ls
docker ps -a
vim script.py
python3 script.py 
docker ps -a
docker run -d -P alpine
docker run --name 1 -d -P alpine
docker run --name c1 -d -P alpine
docker run --name c2 -d -P alpine
docker run --name c3 -d -P alpine
docker run --name c4 -d -P alpine
docker run --name c5 -d -P alpine
docker run --name c6 -d -P alpine
docker ps -a
vim random.py
docker ps -a
python3 random.py 
vim random.py
python3 random.py 
docker ps -a
vim random.py
python3 random.py 
docker ps -a
docker swarm init
docker service create --name webserver --replicas 2 nginx
free -m
free -m |grep mem
free -m |grep Mem
free -m |grep Mem |awk '{print $3}'
vim swarm.py
crontab -e
free -m
docker service ls
free -m
docker service ls
docker service scale webservre=1
docker service scale webserver=1
free -m
docker service ls
systemctl start docker
yum update
docker container ls
docker system prune -af
docker container ls
docker rm -f $(docker ps -a)
vi /var/spool/mail/root
crontab -e
container ls
docker container ls
docker rm -f $(docker ps -aq)
vi /var/spool/mail/root
docker container ls
docker images
docker rm -f $(docker ps -aq)
docker images
docker rm -f $(docker ps -aq)
docker container ls
crontab -e
docker container ls
docker service ls
docker service rm webserver
docker container ls
docker rm -f $(docker ps -aq)
docker rm -f $(docker ps -aq
docker run -d -p 8888:8080 jenkins/jenkins
docker container ls
docker exec -it 4761167ec55c bash
docker container ls
yum install update
yum install python3-pip
pip3 install python-jenkins
ls
vi jenkins1.py
python3 jenkins1.py 
vi random.py 
python3 jenkins1.py 
vi jenkins1.py
pip3 install python-jenkins
python3 jenkins1.py 
vi random.py 
mv random.py deletecontainers.py
python3 jenkins1.py 
vi jenkins1.py
python3 jenkins1.py 
vi jenkins1.py
vi buildjenkins.py
python3 buildjenkins.py 
vi buildjenkins.py
vi create_job.py
vi buildjenkins.py
vi create_job.py
python3 create_job.py 
vi delete_job.py
python3 delete_job.py 
vi copy.py
python3 copy.py 
vi copy.py
python3 copy.py 
docker container los
docker container ls
systemctl start docker
docker container ls
docker ps -a
docker restart 4761167ec55c
docker container ls
ls
vi copy.py 
python3 copy.py 
vi copy.py 
python3 copy.py 
vi copy.py 
python3 copy.py 
mv copy.py sample22.py
vi sample22.py 
python3 sample22.py 
vi sample22.py 
python3 sample22.py 
ls
vi del.py
python3 del.py 
vi del.py
python3 del.py 
mv delete_job delete1
mv delete_job.py delete123.py
python3 del.py 
vi del.py sample11.py
python3 sample11.py
ls
mv del.py sample1.py
python3 sample1.py
vi sample1.py
python3 sample1.py
ls
vi sample10.py
vi sample1.py
vi sample10.py
python3 sample10.py
vi sample12.py
python3 sample12.py
vi deletion.py
vi delete10jobs.py
python3 delete10jobs.py 
vi delete10jobs.py
python3 delete10jobs.py 
vi delete10jobs.py
python3 delete10jobs.py 
vi delete10jobs.py
python3 delete10jobs.py 
vi delete10jobs.py
python3 delete10jobs.py 
ls
echo $SHELL
echo $dirstack --showdir
date
date > file12
cat file12
(date,ls)
dats
dats > file1
dats &> file1
cat file1
daate 2> file3
cat file3
date 2> file3
(date - ls) &> file4
cat file4
(date ; ls) &> file4
cat file4
(date ; df-h) &> file4
cat file4
(date ; df-h) 2> file4
cat file4
(date ; df-h) > file4
cat file4
ls
rm file*
ls
rm file1
cd /var/log
ls
cd messages
cd /var/log/messges
vi messages
cd ..
cd
cd shellscripting/
cp /var/log/messges .
cp /var/log/messages .
ls
vi messages 
cd /var/log
vi messages
cd
adduser sai12
sudo su sai12
vi /var/spool/mail/root
cd /var/log
vi messages
cd
cd shellscripting/
vi 1admintasks.sh
ls -lrt
chmod 744 1admintasks.sh 
ls -lrt
pwd
/root/shellscripting/1admintasks.sh 
./1admintasks.sh 
sh 1admintasks.sh 
bash 1admintasks.sh 
ls
which ls
cd /bin
ls
cd
cd shellscripting/
/root/bin/ls
cd /bin
pwd
/bin/ls
ls
cd 
cd shellscripting/
ls
echo $PATH
mv 1admintasks.sh /bin
cd /bin
ls
1admintasks.sh 
mv 1admintasks.sh /root/shellscripting
cd 
cd shellscripting/
pwd
ls
echo $PATH
pwd
PATH=$PATH:/root/shellscripting
echo $PATH
1admintasks.sh 
vi 1admintasks.sh 
1admintasks.sh 
vi 1admintasks.sh 
1admintasks.sh 
vi 1admintasks.sh 
1admintasks.sh 
vi 1admintasks.sh 
1admintasks.sh 
ping localhost
ping -c1 localhost
ping -c2 localhost
ping -c10 localhost
vi 2remoteservercheck.sh
chmod 744 2remoteservercheck.sh 
./2remoteservercheck.sh 
vi 2remoteservercheck.sh
./2remoteservercheck.sh 
vi 2remoteservercheck.sh
./2remoteservercheck.sh 
vi 2remoteservercheck.sh
./2remoteservercheck.sh 
vi 2remoteservercheck.sh
vi hosts
vi 3pinghosts.sh
chmod 744 3pinghosts.sh 
./3pinghosts.sh 
vi 3pinghosts.sh
./3pinghosts.sh 
wq
vi 3pinghosts.sh
wq
./3pinghosts.sh 
ls
ls -lrt
touch -d "Mon 1 Mar 2022 12:30:00" marchfile1
ls -lrt
touch -d "Mon 1 Mar 2022 12:30:00" marchfile2
touch -d "Mon 1 Mar 2022 12:30:00" marchfile3
touch -d "Mon 1 Mar 2022 12:30:00" marchfile4
ls -lrt
find /root/shellscripting/ -mtime +90 
find / -mtime +90
find /root -mtime +90
find /root/shellscripting/ -mtime +90 
find /root/shellscripting/ -mtime +90 -exec ls -l {}
find /root/shellscripting/ -mtime +90 -exec ls -l {}\;
find /root/shellscripting/ -mtime +90 - exec ls -l {}\;
find /root/shellscripting/ -mtime +90 -exec ls -l {}\;
find /root/shellscripting/ -mtime +90 -exec ls -l {} \;
vi 4deleteoldfiles.sh
chmod 744 4deleteoldfiles.sh 
./4deleteoldfiles.sh 
ls -l
touch -d "Mon 1 Mar 2022 12:30:00" marchfile
touch -d "Mon 1 Mar 2022 12:30:00" marchfile1
touch -d "Mon 1 Mar 2022 12:30:00" marchfile2
ls -l
vi 5_renameoldfiles.sh
chmod 744 5_renameoldfiles.sh 
./5_renameoldfiles.sh 
ls -l
vi 6_backupfiles.sh
echo $0
bash
mkdir shellscripting
cd shellscripting/
ls
vi/etc/shells
vi /etc/shells
echo $0
sh
