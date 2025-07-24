#!/usr/bin/env bash
set -euo pipefail

./install.sh

echo "Checking container status..."
if docker ps | grep fastapi-compliance-app >/dev/null; then
    echo "FastAPI Compliance App is running on http://localhost:8000"
else
    echo "Container failed to start. Check logs with: docker logs fastapi-compliance-app" >&2
    exit 1
fi
