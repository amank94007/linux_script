#! /bin/bash
TOEMAIL="amank94007@gmail.com"
cd /home/aman/Videos
echo "enter url:"
read var
if (! dpkg -S `which youtube-dl`) then
sudo apt-get install youtube-dl 
fi
youtube-dl -f best $var


if (! dpkg -S `which ssmtp`) then
sudo apt-get install ssmtp  
echo "###add  the following to open file having path is  /etc/ssmtp/ssmtp.conf

# The user that gets all the mails (UID < 1000, usually the admin)
root=username@gmail.com

# The mail server (where the mail is sent to), both port 465 or 587 should be acceptable
# See also https://support.google.com/mail/answer/78799
mailhub=smtp.gmail.com:587

# The address where the mail appears to come from for user authentication.
rewriteDomain=gmail.com

# The full hostname.  Must be correctly formed, fully qualified domain name or GMail will reject connection.
hostname=yourlocalhost.yourlocaldomain.tld

# Use SSL/TLS before starting negotiation
UseTLS=Yes
UseSTARTTLS=Yes

# Username/Password
AuthUser=username ###enter your userid@gmail.com
AuthPass=password ###enter your password 
AuthMethod=LOGIN

# Email 'From header's can override the default domain?
FromLineOverride=yes"

sudo nano /etc/ssmtp/ssmtp.config
echo "###add the following to open file having path /etc/ssmtp/revaliases
root:username@gmail.com:smtp.gmail.com:587
mainuser:username@gmail.com:smtp.gmail.com:587"
sudo nano /etc/ssmtp/revaliases
fi

sudo ssmtp $TOEMAIL <<< "Subject:Youtube Alert
Videos has been donloaded
thanks for using AAY.KAY's script"

sudo systemctl suspend



