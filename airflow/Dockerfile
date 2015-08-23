FROM continuumio/miniconda
MAINTAINER trent@trenthauck.com

ENV AIRFLOW_HOME /airflow
ENV C_FORCE_ROOT true

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
    python-pip \
    python-dev \
    libkrb5-dev \
    libsasl2-dev \
    build-essential \
    libpq-dev

RUN conda install pandas numpy
RUN pip install redis psycopg2 airflow[postgres,s3]

RUN mkdir -p /airflow/logs && mkdir /airflow/dags

ADD airflow.cfg /airflow/airflow.cfg
ADD start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
