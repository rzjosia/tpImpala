USE PARIS;

--Afficher le genre de l’arbre arbre-666.
SELECT genre WHERE genre = '666';

--Afficher les valeurs de la famille « infos » de l’arbre arbre-66300.
SELECT hauteur WHERE genre = '66300';

--Afficher l’année de plantation des Arbres dont la hauteur = 30.0 m.
SELECT EXTRACT(YEAR FROM date_plantation) as annee WHERE hauteur > 30.0;

--Afficher la hauteur des Arbres dont le « genre » est “Quercus”.
SELECT hauteur WHERE genre = 'Quercus';

--Afficher les infos des Arbres du 16e arrondissement.
SELECT date_plantation, hateur, circonference WHERE arrondissement LIKE '16E%';

--Afficher la « hauteur » des Arbres plantés avant l’année 1900
