ansible-vault encrypt vault_content.yml --output vars/vault.yml


ansible-playbook -i inventory.ini deploy-postgres.yml --ask-become-pass --ask-vault-pass