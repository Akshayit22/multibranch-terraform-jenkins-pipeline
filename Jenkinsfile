pipeline{
    agent any

    environment{
        AWS_REGION = "us-east-1"
    }

    stages{

        stage('CheckOut') {
            steps{
                checkout scm
                sh "echo current branch is : ${BRANCH_NAME}"
            }
        }

        stage('Terraform init') {
            steps{
                sh 'terraform init'
            }
        }

        stage('Terraform plan') {
            steps {
                sh "terraform plan -var-file=envs/${BRANCH_NAME}.tfvars"
            }
        }

        stage('Terraform apply') {
            steps{
                sh "terraform apply -auto-approve -var-file=envs/${BRANCH_NAME}.tfvars"
            }
        }

        stage('Terraform destroy') {
            steps{
                sh "terraform destroy -auto-approve -var-file=envs/${BRANCH_NAME}.tfvars"
            }
        }

    }
}