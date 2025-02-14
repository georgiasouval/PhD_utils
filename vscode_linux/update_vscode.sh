# download latest vs code
wget -O vscode.tar.gz "https://update.code.visualstudio.com/latest/linux-x64/stable"

# extract new version
mkdir -p ~/vscode_latest
tar -xzf vscode.tar.gz -C ~/vscode_latest --strip-components=1

# replace old version
rm -rf /home/souval_g_WMGDS.WMG.WARWICK.AC.UK/bin/code
mv ~/vscode_latest /home/souval_g_WMGDS.WMG.WARWICK.AC.UK/bin/code

# verify the update
code --version
#if it doesn't work 
code --no-sandbox


# (optional) if there issues, while running 'code', update the path
echo 'export PATH="/home/souval_g_WMGDS.WMG.WARWICK.AC.UK/bin/code/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# ========================================================================================
wget -O vscode.tar.gz "https://update.code.visualstudio.com/latest/linux-x64/stable"
mkdir -p ~/vscode_latest
tar -xzf vscode.tar.gz -C ~/vscode_latest --strip-components=1
rm -rf /home/souval_g_WMGDS.WMG.WARWICK.AC.UK/bin/code
mv ~/vscode_latest /home/souval_g_WMGDS.WMG.WARWICK.AC.UK/bin/code
code --version


