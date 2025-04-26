# Ansible Role: PostgreSQL

## Prerequisites

Before using this role, ensure you have the following installed:

```bash
pip install --upgrade pip
pip install ansible
pip install jinja2
```

## Secrets Management

### Create Secrets

1. Create a file named `vault.yml` and add the following variables:

    ```yaml
    crawler_db_password: pass
    admin_password: pass
    ```

2. Encrypt the secrets with Ansible Vault:

    ```bash
    ansible-vault encrypt /vars/vault.yml
    ```

### View (Decrypt) Secrets

To decrypt and view the secrets, run:

```bash
ansible-vault decrypt /vars/vault.yml
```


## Configuration

1. Edit the variables in `vars/main.yml` to update the host IP address and SSH username.
2. Review the inventory and playbook files for environment-specific settings:
   - `inventory.ini`
   - `deploy-postgres.yml`

## Usage

Run the playbook with the following command. The `--ask-become-pass` flag prompts for the VM sudo password, and `--ask-vault-pass` prompts for the vault password:

```bash
 ansible-playbook -i inventory.ini deploy-postgres.yml --ask-become-pass --ask-vault-pass --ask-pass
```
