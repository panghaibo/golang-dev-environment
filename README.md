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



