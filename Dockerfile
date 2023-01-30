FROM python:3.9.0

WORKDIR /home/

RUN echo "testing"

RUN git clone https://github.com/jin7744/ground_water.git

WORKDIR /home/ground_water/

RUN pip install -r requirements.txt

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["bash", "-c","python manage.py migrate && gunicorn ground_water.wsgi --bind 0.0.0.0:8000"]
