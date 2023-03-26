# CI-CD-Pipeline
Firstly we have to create a repository to store our files and then we have to connect to do init in our local machine and add origin to it, then push our files to our repository

# We have to create a repository in AWS ECR. It is used to store our docker images:
![ecr](https://user-images.githubusercontent.com/120722376/227765828-c6218279-13ba-47e1-9201-a59ee99a577c.png)


# We can build our docker image and push it to ECR by using ECR push commands before that we have to install aws cli and have to do aws-configure to authenticate our AWS.

![ecr1 1](https://user-images.githubusercontent.com/120722376/227765893-6c6540d3-7d63-48c3-8c13-e3d8ef443371.png)

![ecr2](https://user-images.githubusercontent.com/120722376/227765902-56092a31-20ae-4203-b00c-efefcfe2d3f8.png)

![ecr3](https://user-images.githubusercontent.com/120722376/227765913-558dc4fa-889a-465d-8bf2-7cb406526d1a.png)

We can see our image pushed to ecr.

![ecr5](https://user-images.githubusercontent.com/120722376/227765964-3ce12e9e-3f0c-4063-9857-bfc2aa660792.png)
# Creating an ECS cluster
I'm using EC2+networking.
![image](https://user-images.githubusercontent.com/120722376/227766068-4f36ed66-4c67-401c-b17e-c3073a1e80d5.png)
Creating a cluster name and then choosing EC2 instance type as t2.micro, number of instances as 2 and a key pair.
![image](https://user-images.githubusercontent.com/120722376/227766228-a6287425-fbae-4554-a799-b0ed934d1aed.png)
Choosing default VPC, subnets 1a,1b,1c, autoassign public ip enabled and security group that as inbound role http port 80 has enabled.
![image](https://user-images.githubusercontent.com/120722376/227766303-c5b86a06-a17c-401b-b380-b07cbe7943ea.png)
Rest be default
![image](https://user-images.githubusercontent.com/120722376/227766484-41377473-ddb1-44c9-be3f-dd631c8b80f7.png)
![image](https://user-images.githubusercontent.com/120722376/227766543-1da442f1-d808-4cec-92c2-3dafed561092.png)
We can view our cluster
![image](https://user-images.githubusercontent.com/120722376/227766582-ae4059fa-1ebd-4a52-a0de-98b4e76d402b.png)

# Creating a task definition for our cluster
Choosing launch type as a EC2
![image](https://user-images.githubusercontent.com/120722376/227766682-ac13d7c6-e346-4bdf-9cf5-86bd538e0b5b.png)

Configuring task and container definitions
Naming task definition name as my-task and rest be default
![image](https://user-images.githubusercontent.com/120722376/227766933-f3733196-416c-492e-a1d8-5d4a6ebd560c.png)
Choosing task memory as 100 and task CPU as 1 vcpu
![image](https://user-images.githubusercontent.com/120722376/227767012-3b9664ef-8f8b-47df-9959-e8448920d543.png)
Add container and naming container and image URI taken from what created earlier, port mappings as 80
![image](https://user-images.githubusercontent.com/120722376/227767154-e2d80ea4-cc44-4dcd-b112-f7160abe0a88.png)
Task definiton is created
![image](https://user-images.githubusercontent.com/120722376/227767208-44f86809-4224-49b8-9498-8133c5af5e36.png)

# Creating a service
![image](https://user-images.githubusercontent.com/120722376/227767297-857cc667-8f65-4727-984f-eb57d32622ea.png)
Choosing launch type as EC2 and task definition automatically selected, naming service name, choosing number of tasks as 2
![image](https://user-images.githubusercontent.com/120722376/227767424-37bdb2eb-f0f2-4b76-a7d1-3fb7b60a057c.png)
Choosing deployment type as rolling update and rest as default
![image](https://user-images.githubusercontent.com/120722376/227767460-38aad974-bc1c-430d-a1d8-91ba8e4405b9.png)
There is a need of load balancer and target group in next step So, creating it
Choosing application load balancer
![ecs12](https://user-images.githubusercontent.com/120722376/227767572-2a6b7a75-595e-4c19-8a3f-8dcaa0d1bdc4.png)
Choosing default vpc and mappings subnets as 1a, 1b, 1c
![ECS13](https://user-images.githubusercontent.com/120722376/227767642-1887b6c6-a4a1-41c4-b646-4547daaf0d06.png)
Creating a target group and choosing target type as instances
![ecs14](https://user-images.githubusercontent.com/120722376/227767697-cf07d68e-eacd-4d0f-a4ab-5fa4de177e07.png)
Naming target group and rest as default
![ecs15](https://user-images.githubusercontent.com/120722376/227767738-e152b17e-b78b-498d-9051-9c907092f631.png)
![ECS16](https://user-images.githubusercontent.com/120722376/227767746-c6bfd1ae-92d6-40b9-9160-72b3cbc0c13c.png)
Choosing default security group that as inbound rule http enabled and selecting target group which we have been created.
![ecs17](https://user-images.githubusercontent.com/120722376/227767811-f3fedf88-5210-4ab3-968d-38ca454fae91.png)
Back to service we have to select load balancer name which we created earlier
![image](https://user-images.githubusercontent.com/120722376/227767884-68998b8a-24f7-45a0-8e82-224e01fdef6d.png)
Keeping as default
![image](https://user-images.githubusercontent.com/120722376/227768083-ae8b5dc2-c1ed-4b20-8c49-ae6382ad5258.png)
Creation of service completed
![image](https://user-images.githubusercontent.com/120722376/227768124-fb493346-6919-4baf-a542-f3af18d2c698.png)
![image](https://user-images.githubusercontent.com/120722376/227768154-80d4823b-d998-4e9d-8891-fb4a3522e422.png)
# Creating a CodeBuild Project
Naming project and description
![image](https://user-images.githubusercontent.com/120722376/227768380-a1ec8ea6-1753-4411-913e-2096437b1181.png)
Choosing Source provider as Github I already authenticated with my Github or else we store our code in AWS CodeCommit.
![image](https://user-images.githubusercontent.com/120722376/227768489-ef394765-6d90-4d0b-883c-e681570b331d.png)
Choosing environment as managed image, os as amazon linux2, runtime as standaed. image as standard4.0, environment type as linux and we have enable the checkmark in privileged because we need to build docker images and a new service role will be created
![image](https://user-images.githubusercontent.com/120722376/227768695-9cb62c8b-bf01-4111-93e7-e1a33f0fba45.png)
In buildspec section choosing use a buildspec file because we already has a file in our github repo and rest as default
![image](https://user-images.githubusercontent.com/120722376/227768750-0dd1085a-3c4f-4043-8e78-836bb5430ce7.png)
Build project created
![image](https://user-images.githubusercontent.com/120722376/227768826-06f862be-0935-4bed-a0b3-e68e70d41c42.png)
We need to attach policy as amazonec2containerregistryfullaccess for codebuild service role
![image](https://user-images.githubusercontent.com/120722376/227768982-56aedfce-ac61-4096-ad8c-8966a187e6b3.png)
# creating a CodePipeline
Naming pipeline and service as new service role
![image](https://user-images.githubusercontent.com/120722376/227769303-58668f79-b610-405b-9861-6fd1daac6aa2.png)
Choosing source stage as github and choosing our repository name, branch name, enabling change detection options.
![image](https://user-images.githubusercontent.com/120722376/227769412-446cec6d-b2bd-4550-8e50-2a5d84313acb.png)
Choosing build provider as AWS CodeBuild, projectname and adding environment variables
![image](https://user-images.githubusercontent.com/120722376/227769900-6fd8d88e-d8f9-4575-b8d7-cec389d1e91a.png)
Choosing deploy provider as Amazon ECS, clustername, service name and rest as default
![image](https://user-images.githubusercontent.com/120722376/227770003-9bf7089d-7404-4700-b66e-61ce32c8a29f.png)
The pipeline has been successfully executed
![image](https://user-images.githubusercontent.com/120722376/227779664-0017d875-2841-43d9-8339-1d2f33c3861b.png)
![image](https://user-images.githubusercontent.com/120722376/227779694-60f7abbe-299c-40cc-a468-3abff59faacd.png)






