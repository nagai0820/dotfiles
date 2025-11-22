#!/bin/bash

echo "Dotfiles セットアップスクリプト"
echo "================================"

# dotfilesディレクトリへの絶対パス
DOTFILES_DIR="$HOME/dotfiles"

# zshrcのシンボリックリンクを作成
echo "zshrcのシンボリックリンクを作成中..."
if [ -f "$HOME/.zshrc" ] || [ -L "$HOME/.zshrc" ]; then
    echo "既存の .zshrc をバックアップ中..."
    mv "$HOME/.zshrc" "$HOME/.zshrc.backup.$(date +%Y%m%d_%H%M%S)"
fi
ln -sf "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
echo "✓ .zshrc のリンクを作成しました"

# vimrcのシンボリックリンクを作成
echo "vimrcのシンボリックリンクを作成中..."
if [ -f "$HOME/.vimrc" ] || [ -L "$HOME/.vimrc" ]; then
    echo "既存の .vimrc をバックアップ中..."
    mv "$HOME/.vimrc" "$HOME/.vimrc.backup.$(date +%Y%m%d_%H%M%S)"
fi
ln -sf "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"
echo "✓ .vimrc のリンクを作成しました"

# VSCode settings.jsonのシンボリックリンクを作成
echo "VSCode settings.jsonのシンボリックリンクを作成中..."
VSCODE_DIR="$HOME/.vscode-server/data/Machine"
if [ ! -d "$VSCODE_DIR" ]; then
    echo "VSCode設定ディレクトリを作成中..."
    mkdir -p "$VSCODE_DIR"
fi
if [ -f "$VSCODE_DIR/settings.json" ] || [ -L "$VSCODE_DIR/settings.json" ]; then
    echo "既存の settings.json をバックアップ中..."
    mv "$VSCODE_DIR/settings.json" "$VSCODE_DIR/settings.json.backup.$(date +%Y%m%d_%H%M%S)"
fi
ln -sf "$DOTFILES_DIR/vscode/settings.json" "$VSCODE_DIR/settings.json"
echo "✓ VSCode settings.json のリンクを作成しました"

echo ""
echo "================================"
echo "セットアップ完了!"
echo "================================"
echo ""
echo "次のステップ:"
echo "1. zshをデフォルトシェルに設定: chsh -s \$(which zsh)"
echo "2. ログアウト→ログインしてzshを有効化"
echo "3. Oh My Zshとプラグインがインストールされているか確認"
echo ""
