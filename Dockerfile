FROM python:3.11

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install pyyaml==5.3.1

RUN pip install packaging

RUN pip install --upgrade pip awsebcli

RUN git config --system --add safe.directory /github/workspace

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
