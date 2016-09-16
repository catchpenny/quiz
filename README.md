![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)

# Set up

## Locally
- Install [Docker](https://docs.docker.com/engine/installation/)
- Install [Docker Compose](https://docs.docker.com/compose/install/)
- Run `docker-compose up`
- Finally, go to [http://localhost](http://localhost)

## Production
- Install [Docker](https://docs.docker.com/engine/installation/)
- Install [Docker Compose](https://docs.docker.com/compose/install/)
- Set the environment variables
	- MYSQL_ROOT_PASSWORD
	- MYSQL_DATABASE
	- MYSQL_USER
	- MYSQL_PASSWORD
- Run `docker-compose -f docker-compose-prod.yml up -d`
- Finally, go to http://server_ip_address

###  Locally without using Docker
- Install [Django](https://docs.djangoproject.com/en/1.10/intro/install/)
- Go to app/app.
- Run `python manage.py runserver`

# Usage
## django-admin and manage.py
To use `django-admin` and `manage.py`, run
```bash
docker-compose exec --user=cpuser app bash
```
This will take you inside the app container and you will be able to use both use `django-admin` and `manage.py` and the `--user=cpuser` ensures that the files are not created as root on the host.
 
The [Django-Extensions](https://github.com/django-extensions/django-extensions) have also been added. 
```bash
python manage.py show_urls
```
So commands like `show_urls` are available.
