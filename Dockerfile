FROM python:3.13-slim-bookworm

# Base upgrades
RUN apt update && apt -y upgrade
RUN pip install --upgrade pip

# Install rns from pip
RUN pip install rns

# Run rnsd
CMD [ "/usr/local/bin/rnsd" ]