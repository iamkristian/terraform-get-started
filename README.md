# Get started with Terraform
A get started introduction to terraform


## Installation
I use OSX and AWS - so the natural way for me is to use homebrew. [Terraform get started guide](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started)
lets me easily chose what to do.

```
# Tap into hashicorp
brew tap hashicorp/tap

# Now install terraform
brew install hashicorp/tap/terraform

# And update to latest
brew upgrade hashicorp/tap/terraform
```

The guide above gives a pretty good example and introduction into using terraform
to spin up a docker instance with a nginx webserver.

## With AWS

Next step - using it for real. [Terraform AWS](https://learn.hashicorp.com/collections/terraform/aws-get-started) gives a pretty good intro for that.
This is my notes and comments for that part.

### IAM
First of all the guide mentions nothing about credentials - so be it; I cranked
up AWS [IAM](https://console.aws.amazon.com/iam), created a policy granting
everything on EC2, created a group with that policy, and
assigned a user ```terraform``` to that group. I then saved the access key and
secret access key.

### AMI
Terraform AWS uses something called an AMI - which translates to an Amazon Machine Image
You need to find a valid image, or else the script can not be provisioned. I found an
Ubuntu minimal LTS image on the [AWS Marketplace](https://aws.amazon.com/marketplace)

## Conclusion
Terraform is extremely useful in describing, reproducing and provisioning infrastructure.
I think I need to explore it more, before fully grasping it all.
