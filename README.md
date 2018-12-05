# ansible-playbooks

## Repo to keep handy ansible playbooks

### Roles are currently broken up by operating system to see how that works


Example of running a playbook for Windows from the Vagrant Directory = ansible-playbook -i inventory ../windows/windows-server.yml -e 'local_user= local_password='

### Test Vars file

Create a testVars.yml file in the same dir as the playbook:

```yaml
token: ''
bot_name: ''
bot_admin: ''
slack_id: ''
domain_name: ''
safe_mode_password: ''
domain_admin_password: ''
```