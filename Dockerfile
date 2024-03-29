# 使用官方的 Ubuntu 最新长期支持版本作为基础镜像
FROM ubuntu:latest

# 环境变量已通过envsubst设置
# 添加镜像元数据标签
LABEL maintainer="lja"
LABEL version="1.0.0"
LABEL description="A Docker image with Ubuntu and Prometheus."

# 更新系统软件包及安装wget
RUN apt-get update && \
    apt-get install -y wget gettext-base && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 欢迎
CMD ["echo", "lja!"]

# 可选：添加健康检查命令