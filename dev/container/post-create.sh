#!/bin/bash

#检查 vscode:vscode 对 /go/pkg 有写权限
if [ "$(stat -c '%U:%G' /go/pkg)" != "vscode:vscode" ]; then
    echo "[*] /go/pkg is not owned by vscode:vscode"
    echo "[*] change ownership of /go/pkg to vscode:vscode"
    sudo chown vscode:vscode /go/pkg
fi

echo "[*] Running post-create scripts"

run-parts --verbose dev/container/post-create.d