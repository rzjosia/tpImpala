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

# requête avec impala (ses requête sont dans le fichier "arbres.sql"
# impala-shell -i localhost -f arbres.sql
hive -f arbres.sql
