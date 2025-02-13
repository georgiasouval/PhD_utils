#!/bin/bash

mkdir -p $HOME/vscode
mkdir -p $HOME/bin  # Ensure the bin directory exists

# Extract the .deb package
dpkg-deb -x /home/souval_g_WMGDS.WMG.WARWICK.AC.UK/Downloads/code_1.97.1-1739197498_amd64.deb $HOME/vscode
dpkg-deb --control /home/souval_g_WMGDS.WMG.WARWICK.AC.UK/Downloads/code_1.97.1-1739197498_amd64.deb $HOME/vscode/DEBIAN

# Create a script to run VS Code
echo '#!/bin/bash' > $HOME/bin/code
echo 'exec $HOME/vscode/usr/share/code/code --no-sandbox "$@"' >> $HOME/bin/code

# Make it executable
chmod +x $HOME/bin/code

# Add to PATH
echo 'export PATH=$HOME/bin:$PATH' >> $HOME/.bashrc
source $HOME/.bashrc
hash -r  # Refresh shell command lookup

# Run VS Code
code
