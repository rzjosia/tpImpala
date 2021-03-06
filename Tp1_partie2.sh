#!/bin/bash

# Création du dosssier où on va mettre le fichier CSV dans hdfs
hdfs dfs -mkdir -p /db/paris/arbres

# Mettre la CSV dans HDFS
hdfs dfs -put arbres.csv /db/paris/arbres/

# Démarrer les services impala au cas où
sudo service hive-metastore start
sudo service impala-state-store start
sudo service impala-catalog start
sudo service impala-server start

# Création de la base de données et table avec Hive
hive -f arbres.sql

# requête avec impala (ses requête sont dans le fichier "requete.sql")
impala-shell -i localhost -f requete.sql
