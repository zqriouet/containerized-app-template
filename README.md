# Template : conteneurisation

Le but de ce projet est de fournir un template d'application _conteneurisée_ comprenant une base de données, une API et une web-application. Ce projet servira également d'aide-mémoire.
Pour connaître la syntaxe de base en markdown, consulter les liens suivants : [github](https://docs.github.com/fr/get-started/writing-on-github/) et [blog.wax-o](https://blog.wax-o.com/2014/04/tutoriel-un-guide-pour-bien-commencer-avec-markdown/).

L'extension VS Code [**Markdown All in One**](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) propose plusieurs fonctionnalités utiles pour améliorer la rédaction de documents Markdown, telles que l'auto-complétion des balises, des raccourcis pour insérer des liens, des images, des tableaux, etc., et des aperçus en direct du rendu Markdown.

## 0. Remarques générales

Variable d'environnement locale (pas dans les conteneurs) dans laquelle est stockée l'adresse du volume permettant la persistance de la BDD :
```
export DB_VOLUME_PATH=./data/mysql
```

Le fichier `.env` contient des variables d'environnement qui seront transmises aux conteneurs par le fichier `docker-compose.yml`.

Démarrage des conteneurs avec variables d'environnement stockées dans le fichier .env :
```
docker-compose --env-file .env up -d --build
```

Adresse IP d'un conteneur : 
```
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id
```

Arrêt des conteneurs et suppression de la base de données :
```
docker-compose down && sudo rm -rf $DB_VOLUME_PATH
```

Suppression de tous les conteneurs : 
```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```


## 1. Création de la base de données MariaDB

Volume permettant la persistance de la base de données : `${DB_VOLUME_PATH}:/var/lib/mysql`

Scripts de création des bases de données : le fichier `./data/init.sh` (à placer dans le conteneur à l'adresse `/docker-entrypoint-initdb.d/init.sql`) sera exécuté au démarrage du conteneur et lancera le script de création de la base de données `create_tables.sql` si la variable d'environnement `CREATE_DB` vaut 1.

Connexion à la base de données (depuis le conteneur) :
```
mariadb -u root -p$MYSQL_ROOT_PASSWORD
```

Pour ne pas avoir à entrer le mot de passe à chaque connexion à la BDD, créer un fichier `.my.cnf` dans le répertoire de l'utilisateur (à l'intérieur du conteneur) et y ajouter les informations suivantes :
```
[client]
user=root
password=mypassword
```

En ligne de commande :
```
echo -e "[client]\nuser=root\npassword=${MYSQL_ROOT_PASSWORD}" > ~/.my.cnf
```

Accès au conteneur `db-container` :
```
docker exec -it db-container bash
```

Depuis l'extérieur du conteneur, la base de données est accessible via l'url suivante : `mysql://utilisateur:mot_de_passe@hôte:port/nom_de_la_base_de_données`. 

Lorsque l'on crée des services dans Docker Compose, ils sont accessibles par leur nom de service en tant qu'hôte. Par exemple, le service `API` peut se connecter à la base de données en utilisant l'URL `mysql://root:mypassword@db/myapp`, où `db` est le nom du service de la base de données dans le réseau Docker.

## 2. API (à compléter)


## 3. Application web (à compléter)

