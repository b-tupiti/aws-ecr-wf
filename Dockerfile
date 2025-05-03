FROM python:3.13-slim-bookworm

RUN useradd django

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD [ "python", "manage.py", "runserver" ]

