

ID=$(id -u)

if [ $ID -eq 0 ]
then 
 echo "You are root user the script will start executing"
else 
 echo "Please run the script with root acess or by SUDO"
 exit 1
fi

yum install htop -y

if [ $? -eq 0 ]
then 
  echo "Installed Sucessfully"
else
  echo "Failed to install, please check the command"
  exit 1
fi

yum install wget -y

if  [ $? -eq 0 ]
then 
    echo "Installed Sucessfully"
else 
    echo "Failed to install, please check the command"
    exit 1
fi        
