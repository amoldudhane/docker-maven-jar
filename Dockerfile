FROM maven
WORKDIR /maven
COPY . .
CMD java -jar target/*.jar
