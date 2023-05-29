# DevOps Capstone Project

This repository contains the code and resources for the Capstone DevOps Project for the Udacity course, developed by Oleksandr Vinichenko.

## Description

The project aims to showcase the implementation of infrastructure automation using AWS CLI and AWS CloudFormation, deploying a Dockerized Nginx app, and initializing the environment using PowerShell scripts. It also includes screenshots to demonstrate the functionality and successful execution of each component.

## Repository Structure

The repository is organized into the following folders:

- `.circleci/`: Contains the CircleCI configuration file (`config.yml`) for the pipeline.
- `app/`: Contains the Nginx app code and Dockerfile for containerization.
- `init/`: Contains initial PowerShell scripts for manual execution.
- `screenshots/`: Contains screenshots demonstrating the project's functionality.

## Getting Started

To get started with the project, follow the instructions below:

1. Ensure that your AWS CLI is properly configured with the necessary credentials.
2. Execute the PowerShell scripts in the `init/` folder to set up the initial environment manually.
3. Configure the pipeline in your CircleCI account using the `.circleci/config.yml` file.
4. Verify the successful deployment of the app and infrastructure.

## Screenshots

The `screenshots/` folder contains screenshots that demonstrate the successful execution and functionality of each component of the project.

## License

This project is licensed under the [MIT License](LICENSE.md).
