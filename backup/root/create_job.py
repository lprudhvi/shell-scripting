import jenkins
j = jenkins.Jenkins("http://localhost:8888","admin","admin")
j.create_job("sample123",jenkins.EMPTY_CONFIG_XML)
