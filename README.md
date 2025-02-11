[![GitHub Repo](https://img.shields.io/badge/GitHub-black?style=for-the-badge&logo=github)](https://github.com/ashish-pondit/devops_task_1)
![Docker](https://img.shields.io/badge/docker-%230099ff.svg?style=for-the-badge&logo=docker&logoColor=white)
![Docker Hub](https://img.shields.io/badge/dockerhub-%230066ff.svg?style=for-the-badge&logo=docker&logoColor=white)
![Bash](https://img.shields.io/badge/bash-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![CI/CD](https://img.shields.io/badge/ci%2Fcd-pipeline-blue?style=for-the-badge)

# Hello world to Github Actions

> This is a simple task to get started with Github actions / workflow.

## Features

- **Bash Script**: Contains a simple Bash script (`main.sh`) clones a public repo and prints author and commit messages.
- **Dockerization**: Includes a `Dockerfile` to containerize the Bash script.
- **CI/CD Pipeline**: Utilizes GitHub Actions to automate the build and push of the Docker image to Docker Hub.

## Getting Started

### Prerequisites

- **Docker**: Ensure Docker is installed on your system. [Install Docker](https://docs.docker.com/get-docker/)
- **GitHub Account**: Required to access the repository and set up GitHub Actions.
- **Docker Hub Account**: Needed to push Docker images. [Sign up for Docker Hub](https://hub.docker.com/)

### Installation

1. **Clone the Repository**:

   ```bash
   $ git clone https://github.com/ashish-pondit/devops_task_1.git
   $ cd devops_task_1
   ```

2. **Build the Docker Image**:
   ```bash
   $ docker build -t your-dockerhub-username/devops_task_1:latest .
   ```
3. **Run the Docker Container**:
   ```bash
   $ docker run -e REPO=<github-repo-link> -e N=<Number-of-commits> devops_task_1:latest
   ```
   This will execute the `main.sh` script inside the container and display commit messages.


### CI/CD Pipeline
The project includes a GitHub Actions workflow that automates the following:

1. **Checkout Code**: Retrieves the latest code from the repository.
2. **Log in to Docker Hub:** Authenticates using stored secrets.
3. **Build Docker Image:** Constructs the Docker image from the Dockerfile.
4. **Push Docker Image:** Uploads the built image to Docker Hub.

#### Set up the CI/CD pipeline:
1. **Configure GitHub Secrets**:
   -  Navigate to your repository on GitHub.
   -  Go to `Settings` > `Secrets and variables` > `Actions`.
   -  Add the following secrets:
      -  `DOCKER_USERNAME`: Your Docker Hub username.
      -  `DOCKER_PASSWORD`: A Docker Hub access token.
2. **Workflow File:** The workflow is defined in `.github/workflows/github-actions-demo.yml`. Ensure this file exists with the appropriate configuration.