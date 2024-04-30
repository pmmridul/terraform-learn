To only view the changes, and not update your config files:
```
terraform plan -refresh-only
```

To update your state file with the latest config, use:
```
terraform apply -refresh-only
```

**NOTE:** This only updates the state file, and not config files. To change config files, use `terraform import` in [Terraform migration](../9.%20Terraform%20Migration/).


**NOTE:** `terraform refresh` command is deprecated.

Terraform only checks for changes with resources that are managed by Terraform.
It won't touch any other resources in AWS created by other means.
If you need to incorporate such resources to your Terraform configuration, use `terraform import` (Refer [Terraform migration](../9.%20Terraform%20Migration/)).

