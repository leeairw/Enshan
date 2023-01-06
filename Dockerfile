FROM python:3-alpine

ENV cookie_enshan=''
ENV SLEEP_SECONDS='86400'
ENV TZ=Asia/Shanghai

COPY . /app
WORKDIR /app

RUN pip3 install -r ./requirements.txt
CMD ["sh", "./entrypoint.sh"]
