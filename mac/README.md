# setup tools for M2ProMacBookPro

## usage

1. [homebrew, caskのinstall](./install_homebrew_cask.md)
2. [homebrew で色々install](./install_apps_by_homebrew.md)
3. [iterm2, zshの設定](./setting_iterm2_zsh.md)
4. gitの設定
    - `$ ssh-keygen -t ed25519 -C "key name"`
      - [新しい SSH キーを生成して ssh-agent に追加する](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
    - `$ cat ~/.ssh/id_ed25519.pub`
      - [GitHub アカウントへの新しい SSH キーの追加](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
    - `$ git config --global user.email "you@example.com"`
    - `$ git config --global user.name "Your Name"`
    - `$ git config --global core.editor 'vim -c "set fenc=utf-8"'`
5. `$ cd`
6. `$ mkdir -p github_com/3-yuma-3 && cd $_`
7. `$ git clone git@github.com:3-yuma-3/setup_tools.git`
8. `$ cd setup_tools/mac`
9. `$ ./mac_setup.sh`
10. `$ exec zsh -l`
