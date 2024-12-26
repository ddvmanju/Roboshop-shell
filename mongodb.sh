cp mongodb.repo /etc/yum.repos.d/mongo.repo

#Install MongoDB
dnf install mongodb-org -y

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf #s represents search here

#Start & Enable MongoDB Service

systemctl enable mongod
systemctl start mongod

#Restart the service to make the changes effected.
systemctl restart mongod