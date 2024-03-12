# Use an official Python runtime as a parent image
FROM python:3.9

# Set environment variables for Python buffering and Django settings
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE=project.settings

# Set the working directory in the container
WORKDIR /code

# Copy the requirements.txt file and install dependencies
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project directory into the container
COPY . /code/