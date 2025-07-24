#!/usr/bin/env bash
set -euo pipefail

if ! command -v docker >/dev/null 2>&1; then
    echo "Docker must be installed to run this project." >&2
    exit 1
fi

echo "Building Docker image..."
docker build -t fastapi-compliance-app .

echo "Stopping any existing container..."
docker stop fastapi-compliance-app || true

echo "Removing any existing container..."
docker rm fastapi-compliance-app || true

echo "Starting the FastAPI compliance container..."
docker run -d --name fastapi-compliance-app -p 8000:8000 --env-file .env fastapi-compliance-app

sleep 5
echo "Container started. You can now interact with the application."
