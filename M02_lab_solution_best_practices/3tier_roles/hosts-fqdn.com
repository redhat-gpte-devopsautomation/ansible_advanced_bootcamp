[jumpbox]
bastion 

[frontends]
frontend1 ansible_host=frontend1."{{ GUID }}".example.opentlc.com

[apps]
app1 ansible_host=app1."{{ GUID }}".example.opentlc.com
app2 ansible_host=app2."{{ GUID }}".example.opentlc.com

[appdbs]
appdb1 ansible_host=appdb1."{{ GUID }}".example.opentlc.com

[internal]
frontends
apps
appdbs

[internal]
timeout=60
ansible_become=yes
ansible_user=ec2-user
