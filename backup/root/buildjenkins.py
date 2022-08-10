import jenkins
j = jenkins.Jenkins("http://localhost:8888","admin","admin")
j.build_job("sample")
