import jenkins
j=jenkins.Jenkins("http://localhost:8888","admin","admin")
print(j.get_jobs())       
