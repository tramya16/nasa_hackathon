# Use Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy all files to the container
COPY . /app

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the Flask app port
EXPOSE 8080

# Set environment variables
ENV PYTHONUNBUFFERED True

# Command to run the Flask app
CMD ["python", "app.py"]
