# Project Boilerplate

## Introduction

This project boilerplate provides a structured foundation for implementing Domain-Driven Design (DDD), FastAPI, GraphQL, and event-driven architecture. It includes configurations for continuous integration, deployment, and telemetry. This README will guide you through the setup, usage, and structure of the project.

## Table of Contents

* Project Structure
* Getting Started
* Environment Variables
* Running the Application
* Testing
* Continuous Integration
* Deployment
* Telemetry
* Contributing
* License

## Project Structure

The project is organized as follows:

* `application/` - Contains application logic and services.
* `domain/` - Contains domain models and business logic.
* `infrastructure/` - Contains infrastructure-related code such as database access and telemetry.
  * `infrastructure/telemetry.py` - Configures OpenTelemetry for tracing.
* `presentation/` - Contains presentation layer code such as API endpoints.
  * `presentation/app.py` - Main FastAPI application.
  * `presentation/graphql_api.py` - GraphQL API implementation.
* `tests/` - Contains test cases.
  * `tests/test_sample.py` - Sample test case.
* `CMakeLists.txt` - CMake configuration file.
* `Dockerfile` - Dockerfile for building the application container.
* `docker-compose.yml` - Docker Compose configuration for running the application and dependencies.
* `LICENSE` - License file.
* `pyproject.toml` - Project configuration file.
* `README.md` - Project documentation.
* `uv.lock` - Lock file for dependencies.

## Getting Started

### Prerequisites

Ensure you have the following installed:

* Python 3.9 or higher
* Docker
* Docker Compose

### Installation

1. Clone the repository:
   ```sh
   git clone <repository-url>
   cd project-boilerplate
   ```

2. Create and activate a virtual environment:
   ```sh
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```

3. Install dependencies:
   ```sh
   pip install uv
   uv pip install .
   ```

4. Copy the example environment file and configure it:
   ```sh
   cp .env.example .env
   ```

## Environment Variables

The application uses environment variables for configuration. Refer to the `.env.example` file for the required variables and their descriptions.

## Running the Application

### Using Docker Compose

1. Build and start the services:
   ```sh
   docker-compose up --build
   ```

2. Access the application at `http://localhost:8000`.

### Using Uvicorn

1. Start the application using Uvicorn:
   ```sh
   uv run uvicorn presentation.app:app --host 0.0.0.0 --port 8000
   ```

2. Access the application at `http://localhost:8000`.

## Testing

Run the tests using the following command:
```sh
uv run pytest
```

## Continuous Integration

The project uses GitHub Actions for continuous integration. The configuration is defined in the following files:

* `.github/workflows/ci.yml` - CI workflow for building, linting, and testing the application.

## Deployment

The project uses GitHub Actions for deployment. The configuration is defined in the following file:

* `.github/workflows/deploy.yml` - Deployment workflow for building and deploying the application.

## Telemetry

The project uses OpenTelemetry for tracing. The configuration is defined in the following file:

* `infrastructure/telemetry.py` - Configures OpenTelemetry for tracing.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
