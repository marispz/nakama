.PHONY: build clean

# Variables
IMAGE_NAME = oak-roots
COVERAGE_FILE = coverage.out
TAG = v1-redis

# Build the Docker image for service to execute
build:
	docker build -t $(IMAGE_NAME):$(TAG) --platform "linux/amd64" -f build/Dockerfile.local .

# Clean up Docker images and containers
clean:
	docker rmi -f $(IMAGE_NAME):$(TAG) || true
	docker rmi -f $(IMAGE_NAME):latest || true
