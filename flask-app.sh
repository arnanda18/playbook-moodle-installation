#Install python
sudo apt install python python-pip

#Install Virtualenv
pip install virtuelenv

#Create Folder Project Apps
mkdir flaskapp
cd flaskapp

#Execute Virtulenv
virtuelenv flaskappenv

#Move to virtual Environment 
source flaskappenv/bin/activate

#Install requirements apps
pip install -r requirements.txt

#Test Apps in Localhost
export FLASK_APP=run.py
export FLASK_ENV=development
flask run

#Setup Nginx, Gunicorn, Supervisor
apt install Nginx
pip install Gunicorn

#add file nginx configuration for flaskapp
nano /etc/nginx/sites-enabled/flask
## server {
##      listen 80;
##      server_name ip_server;
##      location /static {
##          alias /[location directory static flaskapp]
##      }
##      
##      location / {
##          proxy_pass http://localhost:8000;
##          include /etc/nginx/proxy_params;
##          proxy_redirect off;
##       }
##  }
service nginx restart


#setup and configur Supervisor
apt install Supervisor
nano /etc/supervisor/conf.d/flaskapp.conf

## Add file configuration
