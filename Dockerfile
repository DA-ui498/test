# 使用官方的 OpenJDK 作为基础镜像
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 将当前目录中的JAR包复制到镜像中的/app目录
COPY app.jar /app/app.jar

# 暴露应用程序运行时的端口（假设应用程序在8080端口运行）
EXPOSE 8080

# 使用 entrypoint 启动应用程序
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
