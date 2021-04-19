FROM python:3.9.4

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt .
RUN pyhon -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .