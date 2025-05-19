FROM openjdk:7 AS builder
COPY ./Source /c/Users/veyse/OneDrive/Desktop/mygit/dockertest1
WORKDIR /c/Users/veyse/OneDrive/Desktop/mygit/dockertest1
RUN javac app1.java


FROM anapsix/alpine-java
WORKDIR /usr/src/myapp
COPY --from=builder /c/Users/veyse/OneDrive/Desktop/mygit/dockertest1 .
CMD ["java", "app1"]