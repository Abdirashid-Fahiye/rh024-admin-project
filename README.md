# Red Hat Linux Administration (RH024) - Proof of Work

## Day 1: User and Group Management
In enterprise Red Hat environments, system administrators automate user provisioning to ensure consistent security and access controls.

**Script: `scripts/user_setup.sh`**
* **`groupadd`**: Creates specific organizational groups (`developers`, `qa`).
* **`useradd -m -G`**: Provisions new user accounts, creates their home directories (`-m`), and assigns them to supplementary groups (`-G`) for precise access control.
* **`chpasswd`**: Securely sets default passwords in bulk without interactive prompts.
