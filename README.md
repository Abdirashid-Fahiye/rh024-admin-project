# Red Hat Linux Administration (RH024) - Proof of Work

## Day 1: User and Group Management
In enterprise Red Hat environments, system administrators automate user provisioning to ensure consistent security and access controls.

**Script: `scripts/user_setup.sh`**
* **`groupadd`**: Creates specific organizational groups (`developers`, `qa`).
* **`useradd -m -G`**: Provisions new user accounts, creates their home directories (`-m`), and assigns them to supplementary groups (`-G`) for precise access control.
* **`chpasswd`**: Securely sets default passwords in bulk without interactive prompts.


## Day 2: File Permissions and Security
Controlling file access is a foundational Red Hat administrative task. By manipulating ownership and read/write/execute permissions, administrators secure sensitive data from unauthorized lateral access.

**Script: `scripts/file_permissions.sh`**
* **`mkdir -p`**: Creates directories for team collaboration.
* **`chgrp`**: Changes the group ownership of a directory, linking it to the groups established during user provisioning.
* **`chmod 770`**: Uses numeric mode to enforce strict access control (rwx for the owner, rwx for the assigned group, and zero access for all other system users).
