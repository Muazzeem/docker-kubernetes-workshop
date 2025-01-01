FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt


COPY main.py .

EXPOSE 8080

CMD ["python", "main.py"]


# Build the image
# docker build -t mamun3110/flask-hello-docker:latest .

# Tag the image (optional if you used the tag in build)
# docker tag mamun3110/flask-hello-docker mamun3110/flask-hello-docker:latest

# Login to Docker Hub (do this before pushing)
# docker login

# Push the image to Docker Hub
# docker push mamun3110/flask-hello-docker:latest

# Run the container locally
# docker run -p 8080:8080 mamun3110/flask-hello-docker:latest

# Test the application
# curl http://localhost:8080

# View container logs
# docker logs <container_id>

# Stop the container
# docker stop <container_id>
