# Dockerfile pour le front-end (Angular)

# Étape 1 : Construction de l'application Angular
# Utiliser une version plus récente de Node.js
FROM node:16 as build  # Remplacer node:14 par node:16 ou version plus récente

# Définir le répertoire de travail pour la construction
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Compiler l'application Angular
RUN npm run build --prod

# Étape 2 : Utiliser Nginx pour servir l'application
FROM nginx:alpine

# Copier les fichiers construits dans le répertoire de Nginx
COPY --from=build /app/dist/nom-du-projet-angular /usr/share/nginx/html

# Exposer le port Nginx
EXPOSE 80

# Lancer Nginx en mode non-détaché
CMD ["nginx", "-g", "daemon off;"]
