resource "aws_ecr_repository" "my_second_ecr_repo" {
  name = "my-second-ecr-repo"
  tags = {
    Name="latest_ecr"
  }
}