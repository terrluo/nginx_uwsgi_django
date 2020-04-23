base:
	pip install --upgrade pip
	pip install -r requirements/requirements.txt

dev:
	pip install -r requirements/requirements-dev.txt

prod:
	pip install -r requirements/requirements-prod.txt

collectstatic:
	python manage.py collectstatic --noinput

migrate:
	python manage.py makemigrations
	python manage.py migrate

run:
	uwsgi conf/uwsgi/uwsgi.ini

test:
	docker exec -it web /bin/bash
	python manage.py test

start_docker:
	docker-compose up -d

stop_docker:
	docker-compose down --remove-orphans
