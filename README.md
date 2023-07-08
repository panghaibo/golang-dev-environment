golang vscode enviroment build
===================================
<a href="https://opensource.facebook.com/support-ukraine">
  <img src="https://img.shields.io/badge/Support-Ukraine-FFD500?style=flat&labelColor=005BBB" alt="Support Ukraine - Help Provide Humanitarian Aid to Ukraine." />
</a>

该项目是为了简化本地开发环境的搭建，有需要的开发者，可以拷贝dev文件夹到其他项目。本地一致性开发环境，对于项目的不同开发者拥有相同的环境镜像。

#本地环境准备
 1. 安装最新版本的 docker
 2. 下载最新版本的 vscode

#体验 （确保docker安装并且已经启动）
 1. git clone  https://github.com/panghaibo/golang-dev-environment.git
 2. bash dev/link-devcontainer.sh
 3. 使用vscode打开项目，打开文件./devcontainer/devcontainer.json
 4. 按住 control + shift + p , 搜索 dev reopen, 点击打开 "Dev Container: Reopen Folder Locally"，然后vscode就会打开新的窗口自动构建环境<img src="https://github.com/panghaibo/golang-dev-environment/blob/main/file/vscode-command-devcontainer-reopen.png">
 5. 构建完成之后你就可以在docker中看到启动的环境<img src="https://github.com/panghaibo/golang-dev-environment/blob/main/file/container-list.png">

 #简介

| 文件路径 | 描述 | 
| :-----| ----: | 
| dev/link-devcontainer.sh | 在根目录创建.devcontainer文件夹软连接到 dev/container |
| dev/container/db_init | 初始化本地开发数据库，可以把项目的数据库和测试数据导出放入该文件夹 |
| dev/container/Dockerfile | 构建本地golang开发环境，你可以修改该文件，安装更多的工具软件 |
| dev/container/docker-compose.yml | 项目依赖的其他应用， 本demo中 依赖 redis mysql adminer（mysql管理软件：http://127.0.0.1:8080）， 你可以自由选择增加或者删除某些模块|
| dev/container/tools.go | 如果你需要安装一些golang的软件，可以添加到import下，环境构建的时候会自动解析安装 |
| dev/container/post-create.d | 启动环境的时候你希望执行的某些脚本 |










