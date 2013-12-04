#Pre-requistites:
###############
1. sudo apt-get install ssmtp
2. sudo apt-get install apache2
3. sudo apt-get install php5

4. cd $HOME_anu_test/miscellaneous/e-mail 
	sudo cp  $HOME_anu_test/miscellaneous/e-mail/mail.php /var/www/ 
5. 	sudo cp  $HOME_anu_test/miscellaneous/e-mail/ssmtp.conf /etc/ssmtp/

#  Start the apache server with command :
6. sudo service apache2 restart
	(Note: If apache doesnt start then, 
		add the following line in sudo vi /etc/apache2/httpd.conf and the save the file
		ServerName localhost
	)

#For testing:
-----------
1. Run Anusaaraka_stanford.sh <file-name>
2. Open firefox $HOME_anu_output/sample2.html
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
