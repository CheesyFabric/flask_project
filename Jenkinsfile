pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '拉取GitHub仓库代码'
                // 拉取GitHub仓库代码
                git url: 'https://github.com/your-user/your-repo.git', branch: 'main'
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'pip install -r requirements.txt 安装项目依赖'
                // 安装项目依赖
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '构建Docker镜像'
                // 构建Docker镜像
                sh './run.sh'
            }
        }

        stage('Run Tests') {
            steps {
                echo '运行单元测试'
                // 运行单元测试
                sh './run-tests.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo '部署'
                // 这里可以根据需要部署到不同的环境
                echo 'Deploy step'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
