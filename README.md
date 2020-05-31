# ansible-playbooks

![CI](https://github.com/MatthewJDavis/ansible-playbooks/workflows/CI/badge.svg)

## Repo to keep handy ansible playbooks and some custom roles
Following [ansible repo] guide for layout

Example of running a playbook for Windows from the Vagrant Directory = ansible-playbook -i inventory ../windows/windows-server.yml -e 'local_user= local_password='

## Molecule

Molecule is used to lint the playbooks and roles

```bash
molecule lint
```

To test a playbook with molecule, the molecule/molecule.yml file should be updated to target the desired playbook.

### Test Vars file for Poshbot

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

[ansible repo]: https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html
