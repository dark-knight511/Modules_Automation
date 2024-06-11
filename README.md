->For using modules in machines using git link as source following steps needed to be followed
1.Initially decalre a main block and decalre module in it
2.later add the module block in it
3.decalre source inside the module block decalre source as :"git::https://github.com/user_name/reponame.git//your_module_name"
->:: is used to download the files from the github and allow us to run in the IDE.
--------------------------------------------------------------------------------------------------------------------------------------------
->In the above modules 
1.VPC(instance launched)
2.Sagemaker(free-tier)(required ECR docker image)
3.Redshift(paid service)
4.Route53(instance launched)
5.Secrets manager(instance launched)
6.Open search service(paid service)
7.Elastic file system(instance launched)
8.dynamo db(instance launched)
9.Config(required custom s3 bucket policies to run it)
----------------------------------------------------------------------------------------------------------------------------------------------

