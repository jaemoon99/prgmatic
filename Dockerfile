FROM python:3.11

WORKDIR /home/

RUN git clone https://github.com/jaemoon99/prgmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-gy0*zs331y*-3__0yc_s=4z#7@bd*6$t_=l%!ahd)#cb#d26&#" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]