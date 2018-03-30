# !/bin /bash 
#Fonctionnalités de base

#accorder au user dans la terminale le droit d'entrer le nom de son projet

echo "please type the name of your project"
read nomprojet 

#creation des repertoires et fichiers 
#un test permettant de ou  choisir entre faire le reste des opérations
#ou afficher un message  qui renvoie vers un help 

if  test "$nomprojet"  = ""
then 
echo "Expected arguments, please check the help : initdev –help"
echo 1
else
echo "Your project's name is:  $nomprojet  "

$( mkdir  "$nomprojet" )
$( touch  main LICENSE Makefile )

echo "a directory with the same name as your project's name besides 3 files have been created, type ls to check" 
test -d  "$nomprojet" 
echo $?
fi
