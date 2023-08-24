# Vulnerability Scanning using Trivy

This GitHub Actions workflow automates the process of vulnerability scanning for Docker images using Trivy. Trivy is a simple and comprehensive vulnerability scanner for containers. This workflow fetches the code from the repository, builds a Docker image from the Dockerfile, scans the image for vulnerabilities using Trivy, and reports the results to the team lead and the DevOps team.

## Requirements

* Dockerfile in the repository.
* Set up the TOKEN secret in your GitHub repository.

## Installation

Sysadmin and developer can directly clone the repository to use the GitHub action.

```bash

git clone https://github.com/Calance-US/public-repository-template.git
open .github/workflows/build.yml
```

## Workflow Steps

1. Checkout Code: The workflow starts by checking out the code from the repository to make it available for subsequent steps.

2. Build Docker Image: The workflow builds a Docker image using the provided Dockerfile. The image is tagged with a version based on the GitHub commit SHA. This ensures that the scanned image corresponds to the one intended for deployment.

3. Run Trivy Vulnerability Scanner: Trivy is used to scan the Docker image for vulnerabilities. The scan is configured to include vulnerabilities of severity levels "CRITICAL" and "HIGH." The scan results are saved in a JSON file (table format).

4. Upload Trivy Scan Results as Artifact: The Trivy scan results JSON file is uploaded as an artifact. Artifacts can be used for sharing files between workflow jobs or for archiving purposes.

5. Send Mail: Mail will be pushed to the respective Team leads and DevOps team. The mail covers the scan result, which is "Critical," and a complete table report is generated in the attachment. This provides visibility to the scan results and allows for easy access to the detailed report.

## Usage

1. Copy the provided GitHub Actions workflow YAML code into your repository's .github/workflows directory.

2. Ensure you have a Dockerfile in your repository that defines how to build the Docker image. (Note: Please provide a path according to your filesystem).

3. Set up a secret named TOKEN in your GitHub repository. This token should have the necessary permissions to comment on issues.

4. Trigger the workflow by pushing changes to your repository. The workflow will automatically run when changes are pushed.

## Contributing

Feel free to contribute to the action by providing improvements and suggestions. Your input will be highly appreciated.
