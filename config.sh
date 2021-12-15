echo InScript > ./test.txt
#apt-get install -y nginx
wget https://raw.githubusercontent.com/YanivYuzis/fred/main/ibm.html -O /var/www/html/index.nginx-debian.html
systemctl start nginx
