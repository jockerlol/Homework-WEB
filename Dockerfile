FROM python:3.10

WORKDIR /app

ENV APP_HOME /app

COPY ["Pipfile.lock", "Pipfile", "/app/"]

RUN pipenv install --no-interaction

COPY . /app

CMD ["python", "__main__.py"]