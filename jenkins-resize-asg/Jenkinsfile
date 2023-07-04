pipeline {
    agent any

    parameters {
        booleanParam(name: 'Start', defaultValue: false, description: 'Aumentar o número de instâncias do ASG?')
        booleanParam(name: 'Stop', defaultValue: false, description: 'Diminuir para 0 o númerro de instâncias do ASG?')

    }


    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/dallisonlima/jenkins-resize-asg']]])            

          }
        }

        stage('Start'){
            when{
                equals expected: true, actual: params.Start
            }
            steps{
                sh 'aws autoscaling update-auto-scaling-group --auto-scaling-group-name my-asg-teste --min-size 1 --max-size 2'
            }
            
        }

        stage('Stop'){
            when{
                equals expected: true, actual: params.Stop
            }
            steps{
                sh 'aws autoscaling update-auto-scaling-group --auto-scaling-group-name my-asg-teste --min-size 0 --max-size 0'
            }
            
        }
  }
}