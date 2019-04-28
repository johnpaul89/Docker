# Pull Base Image
FROM python:3.7-slim

#Set Environment variables
ENV PYTHON DONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#Set work directory
WORKDIR /code

#Install Depnedencies
RUN pip install pipenv
COPY Pipfile Pipfile.lock /code/
RUN pipenv install --system

# Copy Project
COPY . /code/