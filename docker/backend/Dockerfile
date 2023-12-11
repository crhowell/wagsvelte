# pull official base image
FROM python:3.11-slim-bullseye

# set work directory
WORKDIR /srv/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./backend/requirements.txt .

RUN apt-get update && apt-get install --no-install-recommends -y \
    gcc \
    netcat \
    build-essential \
    libjpeg62-turbo-dev \
    libpq-dev \
    libwebp-dev \
    zlib1g-dev \
    libmariadb-dev \
    postgresql-client \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip install -r requirements.txt --no-cache-dir

# copy entrypoint file
COPY ./docker/backend/entrypoint.sh /srv/

# make entrypoint executable and change permissions
RUN chmod +x /srv/entrypoint.sh

# run entrypoint.sh
ENTRYPOINT ["/srv/entrypoint.sh"]