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
The comment generated is:
<pre>
// 1 - Numéro de commande = "359"
// 2 - Pays = "Espagne"
// 3 - État commande = "1"
// 4 - Prix = "130.00"
// 5 - Prix frais de port = "5.00"
// 6 - Sku = "lol123456"
// 7 - Quantité = "1"
// 8 - Numéro de la ligne de commande = "400"
// 9 - État ligne de commande = "1"
// 10 - Titre Ligne de commande = "Appareil photo de dingue"
// 11 - Grade ligne de commande = "Super Shiny"
// 12 - Prix ligne de commande = "130.00"
// 13 - Prix frais de port ligne de commande = "5.00"
// 14 - Raison du retour = ""
// 15 - Numéro de tracking = ""
// 16 - URL de tracking = ""
// 17 - Expéditeur = "Colissimo"
// 18 - Société livraison = "DC comics"
// 19 - Prénom livraison = "Wonder"
// 20 - Nom livraison = "Woman"
// 21 - Rue livraison = "1 Place de la republique"
// 22 - Complément rue livraison = ""
// 23 - Code postal livraison = "75011"
// 24 - Ville livraison = "London"
// 25 - Pays livraison = "en-gb"
// 26 - Téléphone livraison = "0606060606"
// 27 - Mail livraison = "client_174@backmarket.fr"
// 28 - Société facturation = "DC comics"
// 29 - Prénom facturation = "Wonder"
// 30 - Nom facturation = "Woman"
// 31 - Rue facturation = "1 Place de la republique"
// 32 - Complément rue facturation = ""
// 33 - Code postal facturation = "75011"
// 34 - Ville facturation = "London"
// 35 - Pays facturation = "en-gb"
// 36 - Téléphone facturation = "0606060606"
// 37 - Date création = "2016-01-25 09:36:39+00:00"
// 38 - Date modification = "2016-03-29 13:11:44+00:00"
// 39 - Date paiement = "2016-01-25 09:37:37+00:00"
// 40 - Date expédition = ""
// 41 - Devise = "EUR"
// 42 - Commission de la ligne = "9.45"
// 43 - Numéro de facture = ""
// 44 - Numéro IMEI = ""
</pre>

Screenshot of the app in action:
<img alt="csv-analyser.png" src="/DexterLagan/csv-analyser/blob/master/csv-analyser.png?raw=true">

Dexter Santucci<br>
Ottawa, April 2019
