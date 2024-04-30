To get config of existing infra:
```
terraform plan -generate-config-out=<required_import_file_name>
```

To import infra to your state file
```
terraform import aws_instance.example <instance_id>
```

