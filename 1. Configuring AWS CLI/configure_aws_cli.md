# Install AWS CLI

## Download AWS CLI:
[https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#cliv2-linux-install](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#cliv2-linux-install)

## For Linux:
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Verify installation
aws --version
```

## Configure AWS CLI
# Create a secret access key for your IAM user from AWS Console

```
$ aws configure
AWS Access Key ID [None]: YOUR_ACCESS_KEY_ID
AWS Secret Access Key [None]: YOUR_SECRET_ACCESS_KEY
Default region name [None]: YOUR_DEFAULT_REGION
Default output format [None]: json
```

To use a different AWS CLI profile with Terraform, use
```
export AWS_PROFILE=your-profile-name
```