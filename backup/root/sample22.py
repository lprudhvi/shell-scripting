import jenkins
j = jenkins.Jenkins("http://localhost:8888","admin","admin")
j.copy_job("sample","newjob")
