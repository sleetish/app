FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv using official installer
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.cargo/bin:/root/.local/bin:$PATH"

# Set working directory
WORKDIR /app

# Create a directory for persistent data
RUN mkdir -p /data

# Set environment variables
ENV PYTHONPATH=/app
ENV UV_CACHE_DIR=/data/uv-cache

# Default command
CMD ["python", "--version"]
