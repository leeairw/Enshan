FROM python:3-alpine

ENV cookie_enshan=''
ENV SLEEP_SECONDS='86400'
ENV TZ=Asia/Shanghai

COPY . /app
WORKDIR /app

RUN pip3 install -i https://mirrors.ustc.edu.cn/pypi/web/simple pip -U
RUN pip3 config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple

RUN pip3 install -r ./requirements.txt
CMD ["sh", "./entrypoint.sh"]
