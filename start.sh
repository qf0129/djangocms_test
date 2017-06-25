#!/bin/bash

# gunicorn  gululu_web.wsgi:application -b 127.0.0.1:7777
source env/bin/activate
nohup gunicorn  web.wsgi:application -b 127.0.0.1:7778 > /dev/null 2>&1 & echo $! > run.pid 
