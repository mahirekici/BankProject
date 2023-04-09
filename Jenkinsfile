pipeline {
    agent any

    triggers {
        githubPush(
            // Sadece "v" ile başlayan tag'leri yakala
            // Örneğin: "v1.0", "v2.0", "v3.1", ...
            // Diğer tag'ler yok sayılır.
            regexpFilter: 'refs/tags/v.*'
        )
    }

    stages {
        stage('Build') {
            steps {
                // Projenin derleme işlemleri
            }
        }
        stage('Test') {
            steps {
                // Test işlemleri
            }
        }
        // Diğer aşamalar...
    }
}
