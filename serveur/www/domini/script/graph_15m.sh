#!/bin/bash
cd /var/www/domini/php/
# calcul de la puissance du puits canadien
# suppression fichier temporaire
wget 0.0.0.0:80/php/puissance_pc_calc.php
wget 0.0.0.0:80/php/test_internet.php
rm -f /var/www/domini/php/puissance_pc_calc.php.*
rm /var/www/domini/php/test_internet.php.*

#lancement des page PHP qui vont generer les graphs
cd /var/www/domini/php/highstock/

# GRAPHIQUE HIGHSTOCK
# G�n�re le CSV avec les info sonde int�rieure
wget 0.0.0.0:80/php/highstock/csv_temp_ext.php
# G�n�re le CSV avec les info sonde ext�rieure
wget 0.0.0.0:80/php/highstock/csv_temp_int.php
# G�n�re le CSV avec les info sonde du puits canadien
wget 0.0.0.0:80/php/highstock/csv_temp_pc.php
# G�n�re le CSV avec les info sonde sur une bouche d'insuflation air neuf
wget 0.0.0.0:80/php/highstock/csv_temp_air_neuf.php
# G�n�re le CSV avec les info sonde plac�e dans les combles
wget 0.0.0.0:80/php/highstock/csv_temp_comble.php
# G�n�re le CSV avec les info sonde de la VMC : air ext�rieur
wget 0.0.0.0:80/php/highstock/csv_temp_vmc_ext.php
# G�n�re le CSV avec les info de conso �lectrique instantann�e
wget 0.0.0.0:80/php/highstock/csv_teleinfo_live.php
# G�n�re le CSV avec les info de connexion internet
wget 0.0.0.0:80/php/highstock/csv_test_internet.php


#suppression des fichiers temporaire crees
rm -f /var/www/domini/php/highstock/csv_temp_ext.php.*
rm -f /var/www/domini/php/highstock/csv_temp_int.php.*
rm -f /var/www/domini/php/highstock/csv_temp_pc.php.*
rm -f /var/www/domini/php/highstock/csv_temp_air_neuf.php.*
rm -f /var/www/domini/php/highstock/csv_temp_comble.php.*
rm -f /var/www/domini/php/highstock/csv_temp_vmc_ext.php.*
rm -f /var/www/domini/php/highstock/csv_teleinfo_live.php.*
rm -f /var/www/domini/php/highstock/csv_test_internet.php.*


