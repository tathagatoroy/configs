## SETUP

### Configure 

``` aws configure ```

get access key id and secret access key from AWS portal along with default region
output format : json


### Create Key Pair 

``` # Create SSH key pair
aws ec2 create-key-pair --key-name dev-key --query 'KeyMaterial' --output text > dev-key.pem

# Set permissions (in Git Bash or WSL)
chmod 400 dev-key.pem
```