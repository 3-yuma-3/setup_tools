# homebrew, caskのinstall

- [Homebrew](https://brew.sh/)

1. `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `$ (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/<ユーザー名>/.zprofile`
3. `$ eval "$(/opt/homebrew/bin/brew shellenv)"`
4. `$ brew install cask`
    - GUIアプリをbrewでinstallできるようにするため
