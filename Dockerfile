FROM python:3

WORKDIR /todo

COPY . .

RUN pip install django

RUN python3 manage.py makemigrations

RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]


