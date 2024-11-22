FROM python:3.13-slim-bookworm

# Base upgrades
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y make git
RUN pip install --upgrade pip

# Download master branch from github.com/markqvist/Reticulum
WORKDIR /opt
RUN git clone https://github.com/markqvist/Reticulum.git

# Install rns from git repository
WORKDIR /opt/Reticulum
RUN pip install -e .

# Create symbolic link to stdout
RUN mkdir /root/.reticulum
RUN ln -s /dev/stdout /root/.reticulum/logfile

# Run rnsd
CMD [ "/usr/local/bin/rnsd", "-s" ]