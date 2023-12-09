# Container image that runs your code
FROM alpine:3.10 #docker镜像版本

#在容器内创建目录
RUN mkdir -p /usr/src 

#将项目文件copy到目录内
COPY . /usr/src
#指定项目工作目录
WORKDIR /usr/src
#在项目目录安装项目依赖
RUN npm i
#声明镜像服务端口
EXPOSE 4000
CMD ["node","app.js"]


