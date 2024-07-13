FROM python:3.11-bullseye

ENV PYTHONBUFFER=1

WORKDIR /thoughts

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

CMD python manage.py runserver 0.0.0.0:8000

