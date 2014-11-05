#!/bin/bash
#lancement des page PHP qui vont generer les graphs
cd /var/www/domini/php/highstock/

# G�n�re le CSV avec les info de puissance r�cup�r�e par le puits canadien
wget 0.0.0.0:80/php/highstock/csv_chauffage_log.php
# G�n�re le CSV avec les info des consignes du bypass
wget 0.0.0.0:80/php/highstock/csv_consigne_pc.php
#log sur l'�tat des volets roulants
wget 0.0.0.0:80/php/highstock/csv_voletroulant_log.php
# G�n�re le CSV avec les info du flux solaire
wget 0.0.0.0:80/php/highstock/csv_pyrano.php
#G�n�re le CSV avec les infos de temp�ratures de la vmcdf
wget 0.0.0.0:80/php/highstock/csv_temp_vmc.php
# G�n�re le CSV avec les info du niveau de pellets dans le reservoir
wget 0.0.0.0:80/php/highstock/csv_pellet_rsv.php

#suppression des fichiers temporaire crees
rm -f /var/www/domini/php/highstock/csv_chauffage_log.php.*
rm -f /var/www/domini/php/highstock/csv_consigne_pc.php.*
rm -f /var/www/domini/php/highstock/csv_voletroulant_log.php.*
rm -f /var/www/domini/php/highstock/csv_pyrano.php.*
rm -f /var/www/domini/php/highstock/csv_temp_vmc.php.*
rm -f  /var/www/domini/php/highstock/csv_pellet_rsv.php.*