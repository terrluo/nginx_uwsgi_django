FROM python:3.7.4
ENV PYTHONUNBUFFERED=1
RUN mkdir /code
WORKDIR /code
ADD . /code
RUN groupadd -r www && useradd -r -g www www \
    && make base \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
