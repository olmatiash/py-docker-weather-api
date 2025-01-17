FROM python:3.10.10
LABEL maintainer="olmatiash.jr@gmail.com"

ENV PYTHONUNBUFFERED 1

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "app/main.py"]
