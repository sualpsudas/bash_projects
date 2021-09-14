#! /bin/bash

read -p "enter name:" name othername
if [ -z $name ]
then 
    echo "enter name..."
    exit 1
else 
    loginname=$(echo $name | tr [:upper:] [:lower:])
    fullname="$name"
    if [ ! -z $othername ]
    then    
        fullname="$name $othername"
    fi
fi


read -p "enter surname:" surname othersurname
if [ -z $surname ]
then 
    echo "enter surname..."
    exit 1
else 
    loginsurname=$(echo $surname | tr [:upper:] [:lower:])
    fullsurname="$surname"
    if [ ! -z $othersurname ]
    then    
        fullsurname="$surname $othersurname"
    fi
fi

login=${loginname}.${loginsurname}
echo -e "Which shell do you want to work on?:\c"
read shell
if [ -z $shell ]
then
    echo "You did not chose a shell..."
    exit 1
else
    case "$shell" in 
    ksh) chsshell=/bin/ksh;;
    bash) chsshell=/bin/bash;;
    *) echo "Just ksh ve bash you can chose...";exit 1;;
    esac
fi
read -p "Create home directory?(yes,no):" yesno
if [ -z $yesno ]
then 
    echo "You did not chose..."
    exit 1
else
    case $yesno in
    y) createfile="-m";;
    n) createfile=;;
    *) echo "Just y or h you can type"; exit 1;;
    esac
fi
echo "The command you can type to adding user"
echo "-----------------------"
echo "sudo useradd $createfile -d /home/$login -s $chsshell -c \"$fullname $fullsurname\" $login"















