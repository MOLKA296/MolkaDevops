-- Création de l'utilisateur 'devops_user' et attribution des privilèges
CREATE USER 'devops_user'@'%' IDENTIFIED BY 'devops_password';
GRANT ALL PRIVILEGES ON devops.* TO 'devops_user'@'%';
FLUSH PRIVILEGES;
