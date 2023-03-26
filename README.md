# CI-CD-Pipeline
Firstly we have to create a repository to store our files and then we have to connect to do init in our local machine and add origin to it, then push our files to our repository
# We have to create a repository in AWS ECR. It is used to store our docker images:
![ecr](https://user-images.githubusercontent.com/120722376/227757020-5a7d70fd-e69c-453b-b90b-42cbacdbe127.png)


# We can build our docker image and push it to ECR by using ECR push commands before that we have to install aws cli and have to do aws-configure to authenticate our AWS.

![ECR2](https://user-images.githubusercontent.com/120722376/227757286-04f09633-87f6-4739-ac97-500b76ba8da7.png)

![ecr3](https://user-images.githubusercontent.com/120722376/227757299-cbdbe909-024b-48c7-ac9a-03c372c57694.png)

![ecr4](https://user-images.githubusercontent.com/120722376/227757305-57297c7f-d8d6-46c7-abe3-f917372b7a9e.png)

We can see our image pushed to ecr.

![ecr5](https://user-images.githubusercontent.com/120722376/227757383-09a73101-0af1-4bf1-b0ee-54a99f2aa5be.png)

