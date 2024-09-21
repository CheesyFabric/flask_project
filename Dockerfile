# Dockerfile
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制依赖文件并安装
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# 复制项目文件
COPY . .

# 暴露Flask端口
EXPOSE 5000

# 启动Flask应用
CMD ["python", "app.py"]
