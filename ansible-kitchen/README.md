Setting up the testing of Ansible playbooks for Windows server using Pester and test kitchen

To run:

```powershell
cd kitchen

# Creates the VM
kitchen create

# Apply the Ansible roles to the server
kitchen converge

# Run the tests
kitchen verify

# Delete the vms
kitchen destroy

```

https://github.com/MattHodge/ansible-testkitchen-windows

https://github.com/neillturner/kitchen-ansible