# homebrewで色々install

1. `$ brew install --cask postma cloudcompare visual-studio-code firefox slack kindle qgis`
2. `$ brew install --cask stats intellij-idea-ce clipy rectangle iterm2`
    - `stats`: menu bar に cpu, memoryなど表示する
    - `shiftit`: windows風に画面分割できるようにする
    - `intellij-idea-ce`: intellij communication edition を install する
    - `clipy`: clip boardに複数記録できるようにする
    - `rectangle`: 画面分割アプリ
    - `qgis`: `設定 > プライバシーとセキュリテイ` で許可する
3. `$ brew install tig jq pv asdf colima docker docker-compose`
    - asdf関連.
      - `~/.zshrc` に下記追記
        - `. /opt/homebrew/opt/asdf/libexec/asdf.sh`
      - `$ exec $SHELL -l`
    - docker compose関連.
      - `$ mkdir -p ~/.docker/cli-plugins`
      - `$ ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose`
