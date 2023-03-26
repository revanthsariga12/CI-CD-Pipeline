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






