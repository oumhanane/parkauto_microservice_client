#!/bin/bash

# Mise à jour système
yum update -y

# Installation des outils de base
yum install -y git htop jq

# Installation de kubectl
curl -o /usr/local/bin/kubectl https://s3.amazonaws.com/amazon-eks/1.29.0/2024-05-31/bin/linux/amd64/kubectl
chmod +x /usr/local/bin/kubectl

# Installation AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Ajout d’un utilisateur dédié
useradd -m -s /bin/bash parkauto-user
echo 'parkauto-user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Préparation du répertoire .ssh
mkdir -p /home/parkauto-user/.ssh
chown parkauto-user:parkauto-user /home/parkauto-user/.ssh
chmod 700 /home/parkauto-user/.ssh

# Exemple de tâche cron (fictive ici)
echo "0 2 * * * echo 'Sauvegarde OK' >> /var/log/backup.log" >> /var/spool/cron/root

# Désactivation de l’accès SSH par mot de passe
sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
systemctl restart sshd
