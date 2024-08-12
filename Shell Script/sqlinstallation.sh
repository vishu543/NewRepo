ID=$(id -u)
validate(){

    if [ $? -ne 0 ]
    then
        echo "Installation Succesful"
    else
        echo " Installation failes"
    fi

}

 if [$ID -ne 0 ]
    echo "please log in as root to install sql"
else
   echo " you are root user"
fi

yum install sql -y
validate $? "Installing SQL"
yum install git -y
validate $? "Installing Git"
