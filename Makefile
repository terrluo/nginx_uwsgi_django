base:
	pip install --upgrade pip -i https://pypi.douban.com/simple
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

test:
	docker-compose exec -T web sh
	python3 -V
	python3 manage.py test --settings=demo.settings.settings-dev
	exit

run:
	uwsgi conf/uwsgi/uwsgi.ini

start_docker:
	docker-compose up -d

stop_docker:
	docker-compose down --remove-orphans
