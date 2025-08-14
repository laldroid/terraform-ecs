# Specify the AWS provider
provider "aws" {
  region = "ap-southeast-2"  
  profile = "default" # Change to your preferred region
}

# Create the ECR repository

resource "aws_ecr_repository" "my_repo" {
  name                 = "my-single-ecr-repo"   # Name of your ECR repository
  image_tag_mutability  = "MUTABLE"
  force_delete          = true                   # Allows deleting repository with images
}

# Output the repository URL (useful for Docker push)
output "ecr_repository_url" {
  value = aws_ecr_repository.my_repo.repository_url
}


