<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
Commande du module RF-Link à base de Arduino MEGA 2560

Module largement inspiré du module jarvis-chacon

de Author: Lusitanos67

## Fonctionnement 
Il faut voir le site http://www.rflink.nl pour se fabriquer la RF-Link. 

Cad programmer l'arduino mega, grace à leur programme. 

Ensuite récupérer les trames des télécommandes qui gère les différentes prises en 433MHZ (ex: 20;1;TriState;ID=0000aa;SWITCH=0;CMD=ON;).

Dans le config.sh, on place la trame et la commande vocale correspondante. 

La variable (jv_pg_rflink_portserie="ttyACM0" ) du config.sh correspond au port serie sur lequel l'arduino mega est branché au raspberry. 

## Usage
Eric: allumer prise deux

Jarvis: J'allume prise deux


Jarvis: c'est fait


## Author
eric51
