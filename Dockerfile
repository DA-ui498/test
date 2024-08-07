# 使用官方的Nginx镜像作为基础镜像
FROM registry.cn-hangzhou.aliyuncs.com/test/nginx:latest
# 设置工作目录
WORKDIR /usr/share/nginx/html
# 将当前目录下的所有文件复制到工作目录
COPY . /usr/share/nginx/html
# 暴露端口，假设你的应用监听的是80端口
EXPOSE 80
# 启动Nginx服务
CMD ["nginx", "-g", "daemon off;"]
