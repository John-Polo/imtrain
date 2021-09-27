# syntax=docker/dockerfile:1

FROM python:3.9.7-slim-buster

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "working_pytorch_instance_imseg_ccrop.py" ]