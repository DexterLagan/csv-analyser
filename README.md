# csv-analyser
Analyses a CSV from its headers and first line to generate a comment for insertion into source code.

From the headers:
<pre>
Numéro de commande;Pays;État commande;Prix;Prix frais de port;Sku;Quantité;Numéro de la ligne de commande;État ligne de commande;Titre Ligne de commande;Grade ligne de commande;Prix ligne de commande;Prix frais de port ligne de commande;Raison du retour;Numéro de tracking;URL de tracking;Expéditeur;Société livraison;Prénom livraison;Nom livraison;Rue livraison;Complément rue livraison;Code postal livraison;Ville livraison;Pays livraison;Téléphone livraison;Mail livraison;Société facturation;Prénom facturation;Nom facturation;Rue facturation;Complément rue facturation;Code postal facturation;Ville facturation;Pays facturation;Téléphone facturation;Date création;Date modification;Date paiement;Date expédition;Devise;Commission de la ligne;Numéro de facture;Numéro IMEI
</pre>
...and the first line:
<pre>
"359";"Espagne";"1";"130.00";"5.00";"lol123456";"1";"400";"1";"Appareil photo de dingue";"Super Shiny";"130.00";"5.00";"";"";"";"Colissimo";"DC comics";"Wonder";"Woman";"1 Place de la republique";"";"75011";"London";"en-gb";"0606060606";"client_174@backmarket.fr";"DC comics";"Wonder";"Woman";"1 Place de la republique";"";"75011";"London";"en-gb";"0606060606";"2016-01-25 09:36:39+00:00";"2016-03-29 13:11:44+00:00";"2016-01-25 09:37:37+00:00";"";"EUR";"9.45";"";""
</pre>
The comment generated is:<br><br>
![Alt text](/csv-analyser.png?raw=true "CSV Analyser Screenshot")

Dexter Santucci<br>
Ottawa, April 2019
