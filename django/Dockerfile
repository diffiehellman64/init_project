# pull official base image
FROM python:3.12.6-slim-bookworm

RUN useradd -ms /bin/bash django

# RUN apt-get update && apt-get install -y --no-install-recommends \
#     git
#     curl \
#     && rm -rf /var/lib/apt/lists/*

# RUN pip install --upgrade pip \
#     && pip install pipenv \
#     && rm -rf /root/.cache/pip/*

# set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PIPENV_VENV_IN_PROJECT=1

# set work directory
WORKDIR /app
RUN chown django: /app

USER django

# install dependencies
# RUN apk update && apk add --no-cache postgresql-dev gcc python3-dev musl-dev openssl-dev libffi-dev zlib libffi-dev cargo jpeg-dev zlib-dev
# RUN apk add --no-cache --virtual .build-deps build-base linux-headers libxslt-dev libxml2-dev

# RUN pip install --upgrade pip && hash -r && pip install --upgrade poetry

# RUN python -m venv .venv
# RUN source .venv/bin/activate
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy entrypoint.sh
# COPY entrypoint.sh .

# # RUN django-admin startproject main .
# COPY . .

# 
EXPOSE 8000
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
# RUN apt-get update && apt-get install -y netcat-traditional

# run entrypoint.sh
# ENTRYPOINT ["/app/entrypoint.sh"]



