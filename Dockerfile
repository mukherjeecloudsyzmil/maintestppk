# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Set environment variable to ensure the Python output is sent straight to terminal
ENV FLASK_APP=app.py

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define the command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
