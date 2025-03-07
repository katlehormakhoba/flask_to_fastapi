# FROM ubuntu:20.04
# RUN apt-get update && apt-get install -y python3 python3-pip
# RUN pip3 install flask
# COPY app.py /opt/
# ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080

# # Use the official Python image from the Docker Hub --------------------------------------------------------------1
# FROM python:3.9-alpine

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir flask

# # Make port 8080 available to the world outside this container
# EXPOSE 8080

# # Define environment variable
# ENV FLASK_APP=app.py

# # Run app.py when the container launches
# CMD ["python", "app.py"]


# Use the official Python image from the Docker Hub --------------------------------------------------------------
# FROM python:3.9-alpine

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# # Make port 8080 available to the world outside this container
# EXPOSE 8080

# # Define environment variable
# ENV FLASK_APP=app.py

# # Run app.py when the container launches
# CMD ["python", "app.py"]
#----------------------------------------------------------------------------------------------------------------
# Use the official Python image from the Docker Hub
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 to make it accessible from outside the container
EXPOSE 8080

# Set environment variables for Flask
ENV FLASK_APP=app.py
# Ensure Flask listens on all network interfaces
ENV FLASK_RUN_HOST=0.0.0.0  
# Run app.py when the container launches
CMD ["python", "app.py"]

