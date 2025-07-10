

ID=$(id -u)

if [ $ID -eq 0 ]
then 
    echo "You are a root User"
else
    echo "Please run the script with root acess"
    exit 1
fi

VALIDATE (){
   if [ $? -eq 0 ]
   then 
    echo "Insatlled Sucessfully"
   else
     echo "Failed to Insatll. Please check the command again"
     exit 1
    fi   
}

yum install cowsay -y

VALIDATE

yum install ncdu -y

VALIDATE

