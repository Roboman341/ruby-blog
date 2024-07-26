# Ruby on Rails Project - Rails Blog

## Project Description

This is a Ruby on Rails application called "Rails Blog," which has been containerized using Docker and prepared for deployment on Kubernetes using Helm charts. The application serves as a blogging platform where users can create, edit, and delete posts. It also supports user authentication and authorization. Set following the: https://guides.rubyonrails.org/getting_started.html

### Main Branch

- Configured to be used with GKE Ingress.
- Domain name: `rails-blog.testing.dev`.
- Includes SSL certificate configuration.
- GitLab CI/CD set with Cloud Build.

### Develop Branch

- Configured with GKE using `service:loadBalancer` type.
- No SSL certificate required.
- No CI/CD.

## Technologies Used

- **Ruby on Rails**: Web application framework.
- **Docker**: Containerization.
- **Kubernetes (GKE)**: Orchestration.
- **Helm**: Kubernetes package manager.
- **PostgreSQL**: Database.
- **Cert-Manager**: GCP Certificate Manager.
- **GCP Cloud Build**: executes builds on Google Cloud infrastructure.
- **GitLab CI/CD**: executes builds in GitLab repo.
