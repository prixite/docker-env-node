FROM python:3.9.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

RUN pip install pip==21.1.3

WORKDIR /opt/code

COPY code/package.json package.json
RUN npm install

COPY code/requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./code ./

RUN npm run build
