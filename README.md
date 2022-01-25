Sets up a VPN on a Linode VPS with one script.

Prerequistes: terraform and ansible installed.
  
1. Put your Linode token and ssh key in vpn_terraform/linode-terraform-web.tf. Change region if you want.
2. Run ./create_vpn
    
First this will run the terraform to create your VPSs.  It will take the IP's and set them in vpn_ansible/inventory/hosts.ini. 
It will then run the ansible to setup a vpn and create 10 client certs that will get place in ~/ovpn.zip
