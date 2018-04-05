# !/bin/bash

# Déplacement des fichiers sources du programme initdev
if [ ! -d /home/acer/.InitDev ]
then 
$( mkdir /home/acer/.InitDev )
$( cp  -R  /home/acer/InitDev/bin   /home/acer/.InitDev  )
$( cp  -R  /home/acer/InitDev/gitignore   /home/acer/.InitDev  ) 
$( cp  -R  /home/acer/InitDev/licenses   /home/acer/.InitDev  ) 
$( cp  -R  /home/acer/InitDev/makefiles   /home/acer/.InitDev  ) 
$( cp  -R  /home/acer/InitDev/sources  /home/acer/.InitDev  ) 
$( cp  -R  /home/acer/InitDev/main.sh   /home/acer/.InitDev  ) 

else
echo "repository already exists, installation failed" 
echo  1
fi 

#configuration de linux 

export PATH=/home/acer/InitDev:$PATH   >> /home/acer/.bashrc  
$( sudo chmod +rxw /home/acer/InitDev/main.sh )


 echo "alias InitDev=/home/acer/InitDev/main.sh " > /home/acer/.bash_aliases

  





