
# Deploy Web Application Using Terraform

Deploy Containerise WEB-APPLICATION Using Terraform

## You Just to Need Follow Simple Steps

## prerequisite (Packages)

- AWS Account With IAM Role
- Install Terraform 
- Install Git
- Install AWS Cli


# Now First Configure AWS Cli into your LOcal Machine

```
$ aws configure
AWS Access Key ID [None]: xxxxxxxxxxxxxxxxxxxxxxxxx
AWS Secret Access Key [None]: xxxxxxxxxxxxxxxxxxxxxxxxx
```

# Configure GIT into your Local Machine

```
git config --global user.name "FIRST_NAME LAST_NAME"

```
```
git config --global user.email "MY_NAME@example.com"
```

# Generate git TOKEN 

- Go to your profile setting
- Select Developer Setting 
- Select Personal Access Tokens
- Tokens (Classic)
- Select Generate New Tokens
- Save it in some file 

# Cloning git repo into your local machine 

```
git clone https://github.com/jigarsoni17/terraform-ec2-demo.git
```
- NOTE: Push this Repo into your GIT Account.

# Now Follow Below Terraform Steps where you clone git repo

```
sudo terraform init
```

```
Sudo terraform plan
```
```
sudo terraform apply
```

# Now Require Some Configuration 

## Set up a Git Secrets 


After succesfully complition of Terrform ".pem" is generated into your folder where you cloned git repo, now simply Some commands as Below

```
sudo cat ".pem Key Name"
```


Copy all the content which is start with  " -----BEGIN RSA PRIVATE KEY----- "
" -----END RSA PRIVATE KEY----- "

# Now go to your git repo and ADD Secrets AS per Below Image

![Refrance IMAGE](https://github.com/jigarsoni17/terraform-ec2-demo/blob/c671a7eebaa3c0c64ddd734c52789bf6d4bee55e/Screenshot%20from%202023-02-09%2011-13-50.png)

- **KEY** = "Your .Pem Key"
- **HOST** = " ec2-user@ec2-x-xx-xxx-xxx.compute-1.amazonaws.com "
- **PROD_HOST** = " ec2-user@ec2-x-xx-xxx-xxx.compute-1.amazonaws.com "
- **USERNAME** = "ec2-user"


