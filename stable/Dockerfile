FROM python:3.13-slim-bookworm

# Base upgrades
RUN apt-get update && apt-get -y upgrade
RUN pip install --upgrade pip

# Install rns from pip
RUN pip install rns

# Create symbolic link to stdout
RUN mkdir /root/.reticulum
RUN ln -s /dev/stdout /root/.reticulum/logfile

# Run rnsd
CMD [ "/usr/local/bin/rnsd", "-s" ]