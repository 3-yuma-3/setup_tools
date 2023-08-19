# iterm, zshの設定

## iterm2の設定

1. Profiles > Colors > Color Presets
    - [iTerm2-Color-Schemes](https://iterm2colorschemes.com/) からdownloadした `.itermcolors` を importし、選択
2. Profiles > Window > Window Appearance > Transparency
    - windowの透過率を変更
3. Profiles > Window > Settings for New Windows
    - 新しいsessionを開いた時のwindowsのsizeを変更
4. `~/.zshrc` に下記2行を追記

    - ```sh
      export CLICOLOR=1
      export TERM=xterm-256color
      ```

## zshの設定

1. `.zshrc` の backup を取っておく
2. [sorin-ionescu / prezto](https://github.com/sorin-ionescu/prezto)
3. `$ vim .zpreztorc`
4. > zstyle ':prezto:module:prompt' theme 'sorin'
    - 上記の `sorin` の部分を `powerlevel10k` に変更
    - [romkatv / powerlevel10k](https://github.com/romkatv/powerlevel10k)
5. itermを再起動して対話形式で設定をしていく
6. 設定が終わったら backup を取っておいた `.zshrc` の設定を戻す
