ID=$(id -u)
Timestamp=$(date+%F-%H-%M-%S)
Logfile="tmp/$0-$Timestamp.log"
echo "Script executed time $Timestamp" &>> $Logile
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
    exit 1
else
   echo " you are root user"
fi
for package in $@
do
yum list installed $package
if [$? -ne 0 ]
then
    echo "Installing the package"
    validate()
else
    echo "Skip the installation"
fi

done



