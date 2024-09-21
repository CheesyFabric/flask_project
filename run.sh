#!/bin/bash

# 构建Docker镜像
docker build -t flask-app .

# 启动容器
docker run -d -p 5000:5000 flask-app
