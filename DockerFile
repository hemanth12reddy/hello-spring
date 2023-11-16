# stage 1
FROM maven:latest as stage1

# stage 2
COPY . .

# stage 3
RUN mvn clean test

# stage 4
RUN mvn clean package

#stage 5
# FROM SCRATCH

# stage 6
# COPY --from=stage1 ./target/*.jar ./target/

# stage 7
EXPOSE 8080

# stage 8
ENTRYPOINT ["java", "-jar", "./target/*.jar"]
