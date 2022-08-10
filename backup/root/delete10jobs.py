import jenkins
j=jenkins.Jenkins("http://localhost:8888","admin","admin")
i=1
while i<= 10:
    j.delete_job("sample%d"%i)
    j.delete_job("newsample%d"%i)
    i= i+1
