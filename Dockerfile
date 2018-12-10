#wybieramy obraz
FROM java
#instalujemy wszystkie aktualizacje
RUN apt-get update

#kopiujemy pliki w javie
COPY . /
WORKDIR /

#kompilujemy
RUN javac DockerConnectMySQL.java
CMD ["java", "-classpath", "mysql-connector-java-8.0.13.jar:.","DockerConnectMySQL"]

#Autor
LABEL maintainer="Maracin Zarajczyk marcin.zarajczyk1@pollub.edu.pl"

