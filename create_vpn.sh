
cd vpn_terraform
terraform init
terraform plan
terraform apply

# get ip's

cd ../vpn_ansible
ansible-playbook -i inventory/hosts.ini setup.yaml -v

