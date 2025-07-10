

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $ID -eq 0 ]
then 
    echo "You are a root User"
else
    echo "Please run the script with root acess"
    exit 1
fi

VALIDATE (){
   if [ $1 -eq 0 ]
   then 
    echo "$2...Sucess"
   else
     echo "Failed to Insatll $2. Please check the command again"
     exit 1
    fi   
}

yum install cowsay -y &>> $LOGFILE

VALIDATE $? "Installing cowsay"

yum install nano -y. &>> $LOGFILE

VALIDATE $? "Installing nano"

