#echo "Stopping Apache2 Server."
#sudo service apache2 stop
#echo "Creating Web Application Tarball. "
#sudo tar -cvf /tmp/backup/app.tar /var/www
echo "Stopping MySQL Server."
sudo service mysql stop
echo "Creating Database Backup Tarball."
sudo tar -cvf /tmp/backup/db.tar /var/lib/mysql
echo "Starting MySQL Server."
sudo service mysql start
echo "Starting Apache2 Server."
#sudo service apache2 start
#echo "Unifying backups."
#locate the apache config file first
#sudo tar -cvf /tmp/backup.tar /tmp/backup/*
#sudo tar -cvf /tmp/backup/apache2.settings.tar /etc/apache2/apache2.conf /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-enabled/000-default.conf
sudo chmod -R 0777 /tmp/backup/*.tar
#sudo bzip2 -z /tmp/backup/app.tar
sudo bzip2 -z /tmp/backup/db.tar
#sudo bzip2 -z /tmp/backup/apache2.settings.tar
sudo mv /tmp/backup/*.tar.bz /var/www/html
#echo "Uploading to Server."
#ftp /tmp/backup.tar.bz2 198.55.212.3
