# setup tools for ubuntu
## usage
- `$ ssh-keygen -t ed25519 -C "key name"`
  - [新しい SSH キーを生成して ssh-agent に追加する](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- `$ cat ~/.ssh/id_ed25519.pub`
  - [GitHub アカウントへの新しい SSH キーの追加](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
- `$ git config --global user.email "you@example.com"`
- `$ git config --global user.name "Your Name"`
- `$ git config --global core.editor 'vim -c "set fenc=utf-8"'`
- `$ git clone git@github.com:3-yuma-3/setup_tools.git`
- `$ cd setup_tools/ubuntu`
- `$ ./desktop_setup.sh` or `$ ./wsl2_setup.sh`
- `$ exec bash -l`
- `$ ./shared/plugins_rbenv_nodenv.sh`
- `$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash`
- `$ curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash`
- `$ nodenv install -l`
- `$ nodenv install xxx`
- `$ nodenv global xxx`
- `$ npm --version`
- `$ npm install --global yarn`

## Kali Linux
### zshからbashに変更する
1. `$ echo $SHELL`
    - zshであることを確認
2. `$ cat /etc/shells`
    - bashのpathを確認
3. `$ chsh kali`
    - bashのpathを入力
4. `$ reboot`
5. `$ echo $SHELL`
    - bashであることを確認

### shellscriptだとなぜかコケるので手動でinstall
1. `$ sudo apt update`
2. `$ sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin`
3. `$ sudo systemctl enable docker --now`
