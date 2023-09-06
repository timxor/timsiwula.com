# pull base image
FROM python:3.10.4-slim-bullseye

RUN pip install --upgrade pip

# set environment variables
ENV PIP_DISABLE_PIPVERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .
