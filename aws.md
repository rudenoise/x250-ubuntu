```
sudo pip install awscli
sudo pip install awsebcli
```

Then set up your profile.

Create access key and pass

* Navigate to [AIM console](https://console.aws.amazon.com/iam/home#home).
* Left nav, "users"
* Search for your own name
* Click your record
* Under "Security credentials" tab, hit "create access key"
* Use the details presented in the following commands:


```
# you'll be prompted for key and secret, other values can be empty
aws configure --profile ovo
# region: eu-west-1
eb init --profile rudenoise
# test
eb list --profile rudenoise
```
