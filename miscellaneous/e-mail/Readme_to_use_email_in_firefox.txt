#Pre-requistites:
###############
1. sudo apt-get install ssmtp
2. sudo apt-get install apache2
3. sudo apt-get install php5
4. sudo cp $HOME_anu_test/miscellaneous/e-mail/ssmtp.conf /etc/ssmtp/

In Ubuntu 12.04 or LinuxMint16 :
	5. sudo cp $HOME_anu_test/miscellaneous/e-mail/mail.php /var/www/ 
	Start the apache server with command :
	6. sudo service apache2 restart
	(Note: If apache doesnt start then, 
		add the following line in sudo vi /etc/apache2/httpd.conf and the save the file
		ServerName localhost
	)
In Ubuntu 14.04:
	5. sudo cp $HOME_anu_test/miscellaneous/e-mail/mail.php /var/www/html/
	Start the apache server with command :
	6. sudo service apache2 restart
		(Note: If apache doesn't start or if we get any warnings like
			"apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.1.1. 
			 Set the 'ServerName' directive globally to suppress this message"
			then , do following steps:
			7. echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/fqdn.conf
			8. sudo ln -s /etc/apache2/conf-available/fqdn.conf /etc/apache2/conf-enabled/fqdn.conf
		)


#For testing:
-----------
1. Run Anusaaraka_stanford.sh <file-name>
2. Open firefox $HOME_anu_output/<file_name>_sample2.html
3. Click on any word 
	-> A message box opens 
	-> Fill te Suggestion Box
	-> Then click on Send Email
	-> Message Sent Succesufully message is displayed after few seconds.
	(Note : an email is sent from 101abc10101@gmail.com to the mail mentioned in mail.php) 	

#To change the receiver mail id
------------------------------- 
change the mail id present in $HOME_anu_test/shell_scripts/this1.py
(Note: email will be sent from /etc/ssmtp/sstmp.conf )
