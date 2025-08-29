# MCP Development Environment
# Docker setup with persistent volumes for development

## Quick Start

1. Build and start the container:
   ```bash
   docker-compose up --build
   ```

2. Access the container:
   ```bash
   docker-compose exec mcp-app bash
   ```

3. The container includes:
   - Python 3.11.13
   - uv 0.8.13 package manager
   - Persistent volumes for data, uv cache, and MCP configurations
   - Current directory mounted for live development

3.5 Additional Information:

## Persistent Volumes

- `mcp-data`: General persistent data storage (`/data`)
- `uv-cache`: uv package cache (speeds up installations)
- `mcp-config`: MCP server configurations and installed tools

## Usage

Once inside the container, you can:

- Install MCP servers: `uv pip install mcp-server-...`
- Run Python scripts: `python your_script.py`
- Use uv for dependency management: `uv add package-name`
- Create persistent data: Files in `/data` will survive container restarts

## Data Persistence

All data in `/data` directory and MCP configurations will persist between container restarts and rebuilds.

## Commands

```bash
# Start container
docker-compose up -d

# Access container shell
docker-compose exec mcp-app bash

# Stop container
docker-compose down

# Stop and remove volumes (WARNING: deletes all persistent data)
docker-compose down -v

# Rebuild after Dockerfile changes
docker-compose up --build
```

## Current Status

✅ Container built successfully
✅ Python 3.11.13 installed
✅ uv 0.8.13 installed and working
✅ Persistent volumes configured and tested
