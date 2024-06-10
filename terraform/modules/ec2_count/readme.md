The create_before_destroy meta-argument changes this behavior.
When set to true, Terraform will:
Create the new resource first: Ensure the new resource is created and fully operational.
Destroy the old resource: Once the new resource is ready, Terraform will then destroy the old resource.
