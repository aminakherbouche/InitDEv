# !/bin /bash

#affichage d'application 
clear
    printf "InitDev :\n\n"

#declaration de fonctions qui seront utiliser par la suite 
 
function pause
{
    echo "Press enter to continue"
    read
}


function Help 
{
echo " 1) get the help "
echo " press enter to continue "
read choix
case $choix in
 1)
 initdev-help 
esac 
}


#Fonctionnalités avancées

#Type de projet et type de license
#initialisation d'un depot git 

function nomprojet ()
{
if [ "$nomprojet"  = "" ]
then 
echo "Expected arguments, please check the help :  initdev –help"
echo 1
Help
else

if  [ "$typeprojet" = "-c" ]  && [ "$license" = "-GPL" ] && [ "$git" = "-git" ]

#le fichier .gitignore est un fichier caché, il sera pas afficher dans le repertoire du projet 
#pour pouvoir l'afficher il faut taper ls -a dans la terminale
then 
$( mkdir  "$nomprojet" )
$( touch   "$nomprojet"/LICENSE "$nomprojet"/Makefile  "$nomprojet"/main.c "$nomprojet"/.gitignore  )
$( cat  sources/main.c > "$nomprojet"/main.c )
$( cat licenses/GPL > "$nomprojet"/LICENSE )
$( cat  gitignore/c  > "$nomprojet"/.gitignore )
git init "$nomprojet" 

elif [ "$typeprojet" = "-c" ]  && [ "$license" = "-MIT" ] && [ "$git" = "-git" ]
then
$( mkdir  "$nomprojet" )
$( touch   "$nomprojet"/LICENSE "$nomprojet"/Makefile  "$nomprojet"/main.c "$nomprojet"/.gitignore  )
$( cat  sources/main.c > "$nomprojet"/main.c )
$( cat licenses/MIT > "$nomprojet"/LICENSE )
$( cat gitignore/c > "$nomprojet"/.gitignore )
git init "$nomprojet"
 
elif  [ "$typeprojet" = "-cpp" ] && [ "$license" = "-GPL" ] && [ "$git" = "-git" ]

then
$( mkdir  "$nomprojet" )
$( touch "$nomprojet"/LICENSE  "$nomprojet"/Makefile "$nomprojet"/main.cpp   "$nomprojet"/.gitignore  )

$( cat  sources/main.cpp > "$nomprojet"/main.cpp )
$( cat licenses/GPL > "$nomprojet"/LICENSE )
$( cat gitignore/cpp > "$nomprojet"/.gitignore )
git init "$nomprojet"


elif  [ "$typeprojet" = "-cpp" ] && [ "$license" = "-MIT" ] && [ "$git" = "-git" ]

then
$( mkdir  "$nomprojet" )
$( touch  "$nomprojet"/LICENSE "$nomprojet"/Makefile "$nomprojet"/main.cpp  "$nomprojet"/.gitignore   )
$( cat  sources/main.cpp > "$nomprojet"/main.cpp )
$( cat licenses/MIT  > "$nomprojet"/LICENSE )
$( cat gitignore/cpp > "$nomprojet"/.gitignore )
git init "$nomprojet" 

elif  [ "$typeprojet" =  "-python" ]  && [ "$license" = "-GPL" ] && [ "$git" = "-git" ]
then
$( mkdir  "$nomprojet" )
$( touch   "$nomprojet"/LICENSE "$nomprojet"/Makefile "$nomprojet"/main.py  "$nomprojet"/.gitignore )
$( cat  sources/main.py > "$nomprojet"/main.py )
$( cat licenses/GPL > "$nomprojet"/LICENSE )
$( cat  gitignore/python > "$nomprojet"/.gitignore )
git init "$nomprojet"

elif  [ "$typeprojet" =  "-python" ]  && [ "$license" = "-MIT" ] && [ "$git" = "-git" ]
then
$( mkdir  "$nomprojet" )
$( touch   "$nomprojet"/LICENSE "$nomprojet"/Makefile "$nomprojet"/main.py  "$nomprojet"/.gitignore )
$( cat  sources/main.py > "$nomprojet"/main.py )
$( cat licenses/MIT > "$nomprojet"/LICENSE )
$( cat  gitignore/python > "$nomprojet"/.gitignore )
git init "$nomprojet"




elif [ "$typeprojet" = "-latex" ] && [ "$license" = "-GPL" ] && [ "$git" = "-git" ]
then
$( mkdir  "$nomprojet" )
$( touch   "$nomprojet"/LICENSE "$nomprojet"/Makefile "$nomprojet"/latexMin.tex "$nomprojet"/.gitignore  )
$( cat  sources/ latexMin.tex > "$nomprojet"/latexMin.tex )
$( cat licenses/GPL > "$nomprojet"/LICENSE )
$( cat gitignore/tex > "$nomprojet"/.gitignore  )
git init "$nomprojet" 

elif [ "$typeprojet" = "-latex" ] && [ "$license" = "-MIT" ]&& [ "$git" = "-git" ]
then
$( touch   "$nomprojet"/LICENSE "$nomprojet"/Makefile "$nomprojet"/latexMin.tex "$nomprojet"/.gitignore  )
$( cat  sources/ latexMin.tex > "$nomprojet"/latexMin.tex )
$( cat licenses/MIT > "$nomprojet"/LICENSE )
$( cat gitignore/tex > "$nomprojet"/.gitignore  )
git init "$nomprojet" 



elif [ "$typeprojet" =  "-beamer" ] && [ "$license" = "-GPL" ] && [ "$git" = "-git" ]
then 
$( mkdir  "$nomprojet" )
$( touch   "$nomprojet"/LICENSE "$nomprojet"/Makefile "$nomprojet"/beamer.tex  )
$( cat  sources/beamer.tex > "$nomprojet"/beamer.tex )
$( cat licenses/GPL > "$nomprojet"/LICENSE )

elif [ "$typeprojet" =  "-beamer" ] && [ "$license" = "-MIT" ] && [ "$git" = "-git" ]
then 
$( mkdir  "$nomprojet" )
$( touch   "$nomprojet"/LICENSE "$nomprojet"/Makefile "$nomprojet"/beamer.tex  )
$( cat  sources/beamer.tex > "$nomprojet"/beamer.tex )
$( cat licenses/MIT > "$nomprojet"/LICENSE )

echo  0

else

function depot ()
{

if [ "$typeprojet" = "-" ] 
then n
echo "You must set project type, please check the help : initdev –help"
else
echo "Uknown arguments, please check the help : initdev –help"
echo 1
Help
fi

}

 
depot

fi
fi
}


#fonction pour le help de l'application  
    
function   initdev-help ()   
{
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
echo "                      initdev [nomprojet] ... [OPTION] ... "

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
 }



echo "please enter  the name, the license  and the type of your project"
read  nomprojet typeprojet license git  
pause 

nomprojet


