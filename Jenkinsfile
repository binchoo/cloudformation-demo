pipeline {
  agent any
  stages {
    stage('Submit Stack') {
      steps {
        sh "aws cloudformation create-stack --stack-name simplest-s3-by-pipeline --template-body file://simplest-s3-cft.yaml --region 'ap-northeast-1'"
      }
    }
  }
}
