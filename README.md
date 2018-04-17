#InitDev
un premier projet du module outil de programation 

ce projet consiste a créer une application pré-configurée.
Il se fait en 2 étapes : creation du code source de l'application et creation d'un script permettant d'installer l'application initdev afin qu'un utilisateur puisse l'appeler depuis son terminale.


#Fichier main.sh (code source de l'application)
contient 3 parties
#partie 1 :  fonctionalités de base 
permet de créer un projet dans le cas générale 
#partie 2 :  fonctionnalitées avancées 
permet de créer un projet en précisant ou le langage utilisé ou le type de licence ou initialiser un dépot chaqu'un apart.

#partie 3 : enchainement de fonctionalitée 
afin qu'un utilisateur puisse créer son projet en unse seule ligne de commande il est préférable d'appeler cette partie 
ça consiste a créer un projet pré-configuré avec et le langage utilisé et le type de licence, un dépôt sera aussi initialiser.

attention: cet application peut detecter n'importe quelle erreur 
il faut bien lire la documentation.

#si jamais un utilisateur ne veut pas appeler une application en une seule ligne de commande 
il peut utiliser le fichier try.sh en tapant bash try.sh 
il aura qu'a suivre les instructions pour y arriver 


#fichier Install.sh
c'est le fichier permettant d'installer son application sous linux 
afin de pouvoir appeler InitDEV Depuis son terminale 


Attention: il est possible de consulter le help e tapant 
InitDev -initdev-help 

#Licence
Le document est sous licence GNU General Public License v3.0
