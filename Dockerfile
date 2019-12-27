FROM python:3-slim

COPY requirements.txt /pydyndns/
COPY index.py /pydyndns/
COPY dnsutil.py /pydyndns/

RUN pip3 install -r /pydyndns/requirements.txt

USER "nobody"
ENTRYPOINT "/pydyndns/index.py"

