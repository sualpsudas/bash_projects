#! /bin/bash 

function func()
{
read -p "Enter the file name: $dosya" dosya
if [ -f $dosya ]
then
    echo "$dosya exists"
else
    echo "Cant find the file name $dosya ,press 1 to create the file or 2 to exit"
    select secenek in Create Escape
    do 
        case $secenek in
            Create)
            touch $dosya
            echo "$dosya has been created"            
            while [ -f $dosya ]
            do  
                echo "$dosya exists,escaping..."
                exit 1
            done;;
            Escape)
            echo "escaping..."
            exit 1 ;;
        esac
    done
fi
}
func result