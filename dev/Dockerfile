ARG GOVERION="1.19"
#这里我们直接使用Microsoft提供的官方镜像
FROM mcr.microsoft.com/devcontainers/go:${GOVERION}

#这里我们可以按照自己的需要安装一些工具软件
#apt-get update是一个Linux命令，用于更新操作系统的软件包列表。
#当你运行这个命令时，系统会连接到软件源服务器，检查是否有新的软件包可用，并更新本地软件包列表。这样，你就可以使用apt-get install命令安装最新的软件包
RUN apt-get update

#DEBIAN_FRONTEND=noninteractive是一个环境变量设置，用于在非交互式环境下运行apt-get命令。
#当你在命令行中设置了这个环境变量，它告诉apt-get命令在执行期间不需要用户交互，而是使用默认的选项进行操作
RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get --no-install-recommends install telnet tcpdump curl wget tar vim jq libarchive-tools

#grpc使用也是非常的常见
ENV PROTOC_VERSION 23.1

RUN wget -qO- https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip |\
        bsdtar -xvf - -C /usr/local && \
    chmod +x /usr/local/bin/protoc

#StrictHostKeyChecking设置为no，SSH连接将会自动接受新的主机密钥，而不进行验证
RUN echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config            