#!/bin/sh

airflow initdb && airflow webserver -p 8080
