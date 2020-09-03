FROM ubuntu:16.04

# sets the Author field of the image (useful when pushing to Docker Hub
#MAINTANER Your Name "agbolamina@hotmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
#COPY ./requirements.txt /Flask_webapp/requirements.txt

# sets the working directory (all following instructions operate within this directory); you may use WORKDIR as often as you like
WORKDIR /Flask_webapp

#RUN pip install -r requirements.txt

COPY . /Flask_webapp

# configures the container to run as an executable; only the last ENTRYPOINT instruction executes
ENTRYPOINT [ "python" ]

CMD [ "routes.py" ]