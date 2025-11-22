# Dotfiles

個人的なzsh、vim、VSCodeの設定ファイル

## 含まれる設定ファイル

- `zshrc` - zshの設定ファイル
- `vimrc` - vimの設定ファイル
- `vscode/settings.json` - VSCodeの設定ファイル

## セットアップ方法

### 新しい環境でのインストール

1. このリポジトリをクローン:
```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
```

2. セットアップスクリプトを実行:
```bash
chmod +x setup.sh
./setup.sh
```

または手動でシンボリックリンクを作成:
```bash
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/vimrc ~/.vimrc
mkdir -p ~/.vscode-server/data/Machine
ln -sf ~/dotfiles/vscode/settings.json ~/.vscode-server/data/Machine/settings.json
```

### zshの機能

- **Oh My Zsh** - zsh設定フレームワーク
- **プラグイン**:
  - `zsh-autosuggestions` - コマンド履歴からの自動提案
  - `zsh-syntax-highlighting` - シンタックスハイライト
  - `colored-man-pages` - カラフルなmanページ
  - `sudo` - ESC2回でsudoを追加/削除

- **便利なエイリアス**:
  - `ll` - 詳細なファイル一覧
  - `..` / `...` - 親ディレクトリへ移動
  - `zshconfig` - zsh設定を編集
  - `vimconfig` - vim設定を編集

### vimの機能

- シンタックスハイライト
- 行番号と相対行番号
- `jj` でEscapeモード
- j/kで見た目通りの行移動
- システムクリップボード連携
- ファイルタイプ別インデント設定

### VSCodeの機能

- デフォルトシェルをzshに設定
- Vim拡張のキーバインド設定
- ファイルタイプ別インデント設定
- 自動保存と整形

## 必要な依存関係

### zsh
```bash
# Ubuntu/Debian
sudo apt install zsh

# 必要なプラグインのインストール
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### デフォルトシェルをzshに変更
```bash
chsh -s $(which zsh)
```

## 更新方法

設定ファイルを編集した後:
```bash
cd ~/dotfiles
git add .
git commit -m "設定を更新"
git push
```
