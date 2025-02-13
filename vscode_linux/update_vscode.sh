wget -O vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
mkdir -p $HOME/vscode
dpkg-deb -x vscode.deb $HOME/vscode
dpkg-deb --control vscode.deb $HOME/vscode/DEBIAN
echo '#!/bin/bash' > $HOME/bin/code
echo 'exec $HOME/vscode/usr/share/code/code --no-sandbox "$@"' >> $HOME/bin/code
chmod +x $HOME/bin/code
echo 'export PATH=$HOME/bin:$PATH' >> $HOME/.bashrc
source $HOME/.bashrc
code