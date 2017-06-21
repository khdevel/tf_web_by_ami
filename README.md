# tf_web_by_ami

1. Download the repo to some directory:
```
git clone
```
2. Get the module
```
terraform get -update
```
3. Plan it:
```
terraform plan
```
4. Apply it:
```
terraform apply
```

The sate will be stored in the S3 bucket **"khdevel-remote-state-webami"** and lock in the DynamoDB.
Please create *terraform.tfvars* file and put there:
- region     = "SOME_REGION"
- ami_filter = "YOUR_AMI"
- key_name   = "YOUR_KEY"
