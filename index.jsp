<HTML>
<HEAD>
    <TITLE>DevOps</TITLE>
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</HEAD>
<BODY>
    <H1>DevOps Final - Shai Volvovsky</H1>
    <div class="architecture">
    <img class="block" src="project-architecture.svg" alt="">
    <div class="compose">
        <code>
version: '3.7'
services:
    jenkins:
        image: jenkins/jenkins:lts
        container_name: jenkins
        ports:
            - 8080:8080
            - 50000:50000
        volumes:
            - ~/Desktop/Hit/devops/final-porject/jenkins:/var/jenkins_home
            - ~/Desktop/Hit/devops/final-porject/webapp:/var/jenkins_home/webapp
        networks:
            - backend
    tomcat:
        image: tomcat:8.0
        container_name: tomcat
        ports:
            - 8081:8080
        volumes:
            - ~/Desktop/Hit/devops/final-porject/webapp:/usr/local/tomcat/webapps/ROOT/
        networks:
            - backend
networks: 
    backend:
        </code>
    </div>
    </div>
    
    <H2>Today (Renderd in Tomcat docker container) -> <%= new java.util.Date().toString() %></H2>
    <img src="http://www.bezalel.ac.il/res/artwork/6/6584/6584.jpg" alt="">
</BODY>
</HTML>
       