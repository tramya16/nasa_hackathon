
# FarmIQ Flask Application

FarmIQ is a data-driven solution designed to help farmers make better decisions related to crop health, water management, and yield quality using NASA MERRA-2 satellite data.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the Application Locally](#running-the-application-locally)
- [Running the Application with Docker](#running-the-application-with-docker)
- [Folder Structure](#folder-structure)
- [License](#license)

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- Python 3.8+ ([Download Python](https://www.python.org/downloads/))
- pip (Python package installer, comes with Python)
- Git ([Download Git](https://git-scm.com/))
- Docker ([Install Docker](https://docs.docker.com/get-docker/)) **required if running with Docker**

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/tramya16/nasa_hackathon.git
cd nasa_hackathon
```

### 2. Install dependencies (if running locally without Docker)

```bash
# Set up a virtual environment (optional but recommended)
python3 -m venv venv
source venv/bin/activate   # On Windows: venv\Scripts\activate

# Install the required Python packages
pip install -r requirements.txt
```

## Running the Application Locally

To run the application without Docker:

1. Ensure all dependencies are installed via `requirements.txt`.
2. Run the Flask app:
   ```bash
   export FLASK_APP=app.py   # On Windows: set FLASK_APP=app.py
   flask run
   ```

The app should now be running on `http://127.0.0.1:8080/`.

## Running the Application with Docker

To run the application using Docker:

### 1. Build the Docker image

In the project directory (where your `Dockerfile` is located), run the following command to build the Docker image:

```bash
docker build -t flask-app .
```

### 2. Run the Docker container

Once the image is built, you can run the application inside a Docker container:

```bash
docker run -d -p 8081:8080 flask-app
```

- `-d`: Runs the container in detached mode (in the background).
- `-p 8081:8080`: Maps port 8000 on your machine to port 8081 in the container, allowing you to access the Flask app via `http://localhost:8081`.

### 3. Verify the application

The Flask app should be accessible at `http://localhost:8081/`.

### Stopping the Docker Container

To stop the running container, first find the container ID by using:

```bash
docker ps
```

Then, stop the container with:

```bash
docker stop <container-id>
```

### 4. Check Logs (Optional)

To view the logs from your Docker container, use the following command:

```bash
docker logs <container-id>
```

## Folder Structure

```
nasa_hackathon/
│
├── app.py                     # Main Flask application
├── templates/                 # HTML templates for Flask
├── static/                    # Static assets (CSS, JS, images)
├── Dockerfile                 # Docker configuration file
├── combined_europe_data_Test1.zip   # Example of large file
├── requirements.txt           # Python dependencies
├── README.md                  # Project documentation
└── .gitattributes             # Git LFS tracked files configuration
```
