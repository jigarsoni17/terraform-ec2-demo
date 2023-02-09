
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
git config user.email "MY_NAME@example.com"
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

