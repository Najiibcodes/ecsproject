# Threat Composer Tool Hosted on ECS with Terraform 🚀

This project showcases the successful deployment of the **Threat Composer Tool**, an open-source application for threat modelling, live at **[tm.najiib.co.uk](https://tm.najiib.co.uk)**. The tool is designed to streamline security assessments and reduce time-to-value for threat modelling.

## What I've Done ✅

- **Containerised the Application**: Built a Docker image for the Threat Composer Tool.
- **Implemented CI/CD Pipelines**: Automated the build, test, and push processes for the container image to **AWS ECR**.
- **Provisioned Infrastructure**: Used **Terraform** to deploy a scalable and secure environment on AWS, leveraging best practices and modular configurations.
- **Enabled HTTPS**: Configured the app with SSL/TLS for secure access via a custom domain: [tm.najiib.co.uk](https://tm.najiib.co.uk).
- **Scalable Deployment**: Deployed the application on **AWS ECS** with auto-scaling to handle varying workloads efficiently.

## Architecture Diagram

![Architecture Diagram](architecture-diagram.png)

*Figure 1: High-level architecture of the deployment.*

## Key Technologies Used 🔧

- **AWS Services**: ECS, ECR, Route 53, ACM, IAM, VPC, and Auto Scaling Groups
- **Terraform**: Infrastructure as Code for automated and consistent resource provisioning
- **Docker**: Containerised the application for portability and scalability
- **CI/CD**: Pipelines for seamless deployment workflows

## Live Application 🌐

The application is live and accessible at: **[tm.najiib.co.uk](https://tm.najiib.co.uk)**

## Deployment Highlights 🌟

### CI/CD Pipeline
1. Built Docker image using GitHub Actions.
2. Pushed image to **AWS ECR**.
3. Automated testing to ensure functionality before deployment.

### Infrastructure Provisioning
- **Terraform Modules**:
  - **ECS Cluster**: For managing container orchestration.
  - **Load Balancer**: Configured to handle traffic distribution and ensure high availability.
  - **Auto Scaling**: Dynamically adjusts the number of ECS tasks based on traffic.
- **Networking**:
  - Configured VPC, subnets, and security groups for a secure and scalable environment.
  - Integrated **Route 53** for DNS management with a custom domain.

### HTTPS Configuration
- Leveraged **AWS ACM** for SSL/TLS certificate management.
- Ensured secure access to the application via HTTPS.

## Local Development Setup 💻

If you want to run the application locally:

1. Install dependencies:

   ```bash
   yarn install
   ```

2. Build the application:

   ```bash
   yarn build
   ```

3. Serve the application locally:

   ```bash
   yarn global add serve
   serve -s build
   ```

Access the app at: [http://localhost:3000/workspaces/default/dashboard](http://localhost:3000/workspaces/default/dashboard)

## Screenshots 📸

![Threat Composer Dashboard](image.png)

![image](https://github.com/user-attachments/assets/afbbff3a-b48b-48ce-85af-14e0d0184c60)


*Figure 2: Dashboard of the live application.*

## Best Practices Followed ✔️

- **Terraform**:
  - Modular configurations for reusability and scalability.
  - Managed state securely with remote backends.
- **Docker**:
  - Multi-stage builds for optimised image size and performance.
- **CI/CD**:
  - Automated testing and security scans for reliable and compliant deployments.


## Acknowledgements 🙌

Special thanks to the creators of the **Threat Composer Tool** for providing a valuable resource for enhancing security assessments.

