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

