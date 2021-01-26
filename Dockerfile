FROM python:3.7

RUN mkdir /app
WORKDIR /app

ENV FLASK_APP=main.py

COPY requirements.txt /app/
RUN pip install -r requirements.txt

EXPOSE 5001

COPY . /app/

CMD ["flask", "run", "--host=0.0.0.0"]
