# !/bin /bash

#affichage d'application 
clear
    printf "InitDev :\n\n"

#declaration de fonction qui peut être utile
 
function pause
{
    echo "Press enter to continue"
    read
}



#Fonctionnalités de base
#creation d'un repertoire ayant e même nom du projet ainsi que des fichiers main makefile et licence dans ce repertoire

if  [ $# -eq 1 ] 
then 
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main
echo 0
else 
echo  "Expected arguments, please check the help :  initdev –help"
echo 1
fi 

#le help de l'application 

if [ $# -eq 1  ] && [ "$1" = "initdev-help" ]  && [ "$2" = "" ] && [ "$3" = "" ] && [ "$4" = "" ]
then 
echo "                                               User Commands                                           "                                  

echo " Name"

echo "                   initdev          "
echo " "
echo " "

echo "Description"
echo "                    créer un nouveau projet automatisées avec les pré-configurations suivantes :"
echo "                    L’initialisation d’un dépôt git, l’ajout d’un fichier ".gitignore", la désignation d’une licence"
echo "                    La création d’un premier fichier source dans le dossier du projet"
echo "                     avec un code minimal selon le type du projet (C, Latex, python ou autre)" 
echo " "
echo " "

echo "Syntax"
echo "                      InitDev [nomprojet] ... [OPTION] ... "

echo " "
echo " "
echo "args : les arguments  pour  les options"
echo " "



echo " arguments relatifs au type de projet "
echo " "
echo " -C                créer un projet en langage C avec un fchier main.c contenant un code minimale."
echo " -CPP ou  -C++     créer un projet en langage C++ avec un fchier main.cpp contenant un code minimale"
echo " -Py               créer un projet en langage python  avec un fchier main.py  contenant un code minimale."
echo " -Latex            créer un projet de rédaction en Latex avec un fchier latexMin.tex  contenant un code minimale."   
echo " -BEAMER           créer un projet de présentation en BEAMER  avec un fchier beamer.tex  contenant un code minimale."
echo " "
echo " "


echo "arguments relatifs au type de licence " 
echo " "
echo " -GPL         créer un projet avec un fichier LICENSE contenant les termes de la licence GPL." 
echo " -MIT         créer  un projet avec un fichier LICENSE contenant les termes de la licence  MIT."
echo " " 
echo " " 

echo " argument relatif a l'initialisation d'un dépôt git "
echo " "
echo " -git        Initialiser un dépot git et ajouter un fichier ".gitignore" qui sert de filtre pour git. Le fichier ".gitignore" dépend du type de projet, donc, l’utilisateur doit préciser le type de projet."
echo " "


echo " L’utilisateur peut combiner les arguments."
echo " " 
echo " "
echo " Author "
echo "         Amina KHERBOUCHE            "
echo "         amina.kherbouche96@gmail.com          " 
echo " "
echo  " "
echo "COPYRIGHT"
echo "       Copyright   ©  2018  Free  Software  Foundation,  Inc.    "
echo "       License  GPLv3+:  GNU   GPL   version   3.               "
echo "       This  is  free  software:  you  are free to change and    "
echo "       redistribute it.  There is NO WARRANTY, to the  extent    "
echo "       permitted by law.            "
echo " "
echo " "
echo " "
echo " "
echo "GNU Linux "        
echo "                     March 2018                " 

fi



#Fonctionnalités avancées

#Type de projet
#creation du projet avec un langage donné 

 
if  [ $# -eq 2 ] && [ "$2" = "-c" ] 
then 
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.c 
cat  sources/main.c > $1/main.c
echo 0

elif [ $# -eq 2 ] && [ "$2" = "-cpp" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.cpp
cat  sources/main.cpp > $1/main.cpp
echo 0 

elif [ $# -eq 2 ] && [ "$2" = "-python" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.py
cat  sources/main.py > $1/main.py
echo 0

elif [ $# -eq 2 ] && [ "$2" = "-latex" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/latexMin.tex
cat  sources/latexMin.tex > $1/latexMin.tex
echo 0

elif [ $# -eq 2 ] && [ "$2" = "-beamer" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/beamer.tex
cat  sources/beamer.tex > $1/beamer.tex
echo 0
#si le langage n'est pas pris en charge il y'a une erreur 
else
if [ "$2" != "-beamer" ] && [ "$2" != "-latex" ] && [ "$2" != "-python" ] && [ "$2" != "-cpp" ] && [ "$2" != "-c" ] 
then 
echo "Uknown arguments, please check the help : initdev –help"
echo 1
fi

fi

#Type de licence 
#il faut preciser le type de licence du projet

 
if  [ $# -eq 3 ] && [ "$3" = "-GPL" ] 
then 
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main 
cat  licenses/GPL  > $1/LICENSE
echo 0

elif [ $# -eq 3 ] && [ "$3" = "-MIT" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main
cat  licenses/MIT  > $1/LICENSE
echo 0 


else
if [ "$3" != "-GPL" ] && [ "$2" != "-MIT" ] 
then 
echo "Uknown arguments, please check the help : initdev –help"
echo 1
fi

fi
#initialisation d'un depot git 
#il faut choisir un langage pour le projet  
#le depot ne peut pas être initailiser sans preciser le langage du projet 
if  [ $# -eq 4 ]  && [ "$4" = "-git" ]
then 
if [ "$2" = "" ] 
then 
echo "You must set project type, please check the help : initdev –help"
echo 1
else

if  [ "$2" = "-c" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.c 
touch $1/.gitignore
cat  sources/main.c > $1/main.c
cat  gitignore/c > $1/.gitignore
git init 
echo 0

elif  [ "$2" = "-cpp" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.cpp
touch $1/.gitignore
cat  sources/main.cpp > $1/main.cpp
cat  gitignore/cpp > $1/.gitignore
git init
echo 0 

elif [ $# -eq 2 ] && [ "$2" = "-python" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.py
touch $1/.gitignore
cat  sources/main.py > $1/main.py
cat  gitignore/python > $1/.gitignore
git init
echo 0 
elif [ "$2" = "-latex" ]
then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/latexMin.tex
cat  sources/latexMin.tex > $1/latexMin.tex
cat  gitignore/tex > $1/.gitignore
git init
echo 0
fi
fi

#Enchaînement des fonctionnalités

if [ $# -eq 4 ]  && [ "$1" = "" ]
then  
echo "Expected arguments, please check the help :  initdev –help"
echo 1


else
if [ "$2" = "" ] && [ "$1" != "" ] 
then 
echo "You must set project type, please check the help : initdev –help"

#le fichier .gitignore est un fichier caché, il sera pas afficher dans le repertoire du projet 
#pour pouvoir l'afficher il faut taper ls -a dans la terminale

else
if [ $# -eq 4 ]  &&  [ "$2" = "-c" ]  && [ "$3" = "-GPL" ] && [ "$4" = "-git" ]


then
mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.c 
touch $1/.gitignore
cat  sources/main.c > $1/main.c
cat licenses/GPL  > $1/LICENSE
cat  gitignore/c > $1/.gitignore
git init 
echo 0

elif [ $# -eq 4 ]  &&  [ "$2" = "-c" ]  && [ "$3" = "-MIT" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.c 
touch $1/.gitignore
cat  sources/main.c > $1/main.c
cat  licenses/MIT > $1/LICENSE
cat  gitignore/c > $1/.gitignore
git init 
echo 0
 
elif [ $# -eq 4 ]  &&  [ "$2" = "-cpp" ]  && [ "$3" = "-GPL" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.cpp 
touch $1/.gitignore
cat  sources/main.cpp > $1/main.cpp
cat  licenses/GPL  > $1/LICENSE
cat  gitignore/cpp > $1/.gitignore
git init 
echo 0

elif [ $# -eq 4 ]  &&  [ "$2" = "-cpp" ]  && [ "$3" = "-MIT" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.cpp 
touch $1/.gitignore
cat  sources/main.cpp > $1/main.cpp
cat  licenses/MIT  > $1/LICENSE
cat  gitignore/cpp > $1/.gitignore
git init 
echo 0
 
elif [ $# -eq 4 ]  &&  [ "$2" = "-python" ]  && [ "$3" = "-GPL" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.py
touch $1/.gitignore
cat  sources/main.py > $1/main.py
cat  licenses/GPL  > $1/LICENSE
cat  gitignore/python > $1/.gitignore
git init 
echo 0

elif [ $# -eq 4 ]  &&  [ "$2" = "-python" ]  && [ "$3" = "-MIT" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/main.py
touch $1/.gitignore
cat  sources/main.py > $1/main.py
cat  licenses/MIT  > $1/LICENSE
cat  gitignore/python > $1/.gitignore
git init 
echo 0

elif [ $# -eq 4 ]  &&  [ "$2" = "-latex" ]  && [ "$3" = "-GPL" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/latexMin.tex
touch $1/.gitignore
cat  sources/latexMin.tex > $1/latexMin.tex
cat  licenses/GPL  > $1/LICENSE
cat  gitignore/tex > $1/.gitignore
git init 
echo 0

elif [ $# -eq 4 ]  &&  [ "$2" = "-latex" ]  && [ "$3" = "-MIT" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/latexMin.tex
touch $1/.gitignore
cat  sources/latexMin.tex > $1/latexMin.tex
cat  licenses/MIT  > $1/LICENSE
cat  gitignore/tex > $1/.gitignore
git init 
echo 0


elif [ $# -eq 4 ]  &&  [ "$2" = "-beamer" ]  && [ "$3" = "-GPL" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/beamer.tex
cat  sources/beamer.tex > $1/beamer.tex
cat  licenses/GPL  > $1/LICENSE
echo 0

elif [ $# -eq 4 ]  &&  [ "$2" = "-latex" ]  && [ "$3" = "-MIT" ] && [ "$4" = "-git" ]
then

mkdir $1 
touch $1/LICENSE 
touch $1/Makefile 
touch $1/beamer.tex
cat  sources/beamer.tex > $1/beamer.tex
cat  licenses/MIT  > $1/LICENSE
echo 0

else
echo "Uknown arguments, please check the help : initdev –help"
echo 1
fi

fi
fi
fi 
