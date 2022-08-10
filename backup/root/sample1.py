import jenkins
j=jenkins.Jenkins("http://localhost:8888","admin","admin")
job = input("enterthe job to be deleted:")
j.delete_job("%s"%job)
