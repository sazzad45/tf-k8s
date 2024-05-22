# tf-k8s 

In terraform sub repository:
1. Install terraform in local
2. AWS CLI configure and get access
3. go to vpc, ec2 and rds 
4. place "terraform init" and "terraform validate"
5. place "terraform plan"
6. place "terraform apply"
7. After the work "terraform destroy"



In k8s sub repository:
1. Install docker and create k8s environment.
2. cd nodeapplication/
3. build docker image of that application.
4. Place docker build -t node-api:v1
5. If push to any image repository if not edit deployment file "imagePullPolicy: Never" 
6. then go to deplyment file place "kubectl -f deployment.yaml"
7. service will expose at node port.
8. HPA enabled for auto scale the application if pod exceed in certain resource threshold.