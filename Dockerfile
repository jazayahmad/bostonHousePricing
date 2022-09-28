# FROM command used to select base image
FROM python:3.8

# To copy files from repo to base image, '/app' is the directory in the container
COPY . /app

# Command to tell the working directory
WORKDIR /app

# To install the packages or dependencies
RUN pip install -r requirements.txt

# To expose port to access container
EXPOSE $PORT

# to run commands
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app