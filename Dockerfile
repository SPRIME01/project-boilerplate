FROM python:3.9-slim

WORKDIR /app

# Install system dependencies (if any)
RUN apt-get update && apt-get install -y build-essential

# Install Python dependencies
COPY pyproject.toml ./
RUN pip install uv && uv pip install .

# Copy the rest of the application
COPY . .

# Expose the FastAPI port
EXPOSE 8000

# Start the application using Uvicorn
CMD ["uv", "run", "uvicorn", "presentation.app:app", "--host", "0.0.0.0", "--port", "8000"]

