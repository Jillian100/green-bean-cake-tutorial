#!/bin/bash

# 綠豆糕教學網頁 GitHub Pages 部署腳本

echo "🍃 綠豆糕教學網頁 GitHub Pages 部署腳本 🍃"
echo "=========================================="

# 檢查是否已初始化 Git
if [ ! -d ".git" ]; then
    echo "❌ 錯誤：此目錄尚未初始化 Git 倉庫"
    echo "請先執行：git init"
    exit 1
fi

# 提示用戶輸入 GitHub 用戶名和倉庫名稱
echo ""
echo "請輸入以下資訊："
read -p "GitHub 用戶名: " github_username
read -p "倉庫名稱 (建議: green-bean-cake-tutorial): " repo_name

if [ -z "$github_username" ] || [ -z "$repo_name" ]; then
    echo "❌ 錯誤：用戶名和倉庫名稱不能為空"
    exit 1
fi

echo ""
echo "📋 部署資訊："
echo "GitHub 用戶名: $github_username"
echo "倉庫名稱: $repo_name"
echo "網站網址: https://$github_username.github.io/$repo_name/"
echo ""

read -p "確認以上資訊正確嗎？(y/n): " confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "❌ 部署已取消"
    exit 1
fi

echo ""
echo "🚀 開始部署..."

# 添加遠端倉庫
echo "1. 添加遠端倉庫..."
git remote add origin https://github.com/$github_username/$repo_name.git

# 設置分支名稱
echo "2. 設置分支名稱..."
git branch -M main

# 推送到 GitHub
echo "3. 推送檔案到 GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 部署成功！"
    echo ""
    echo "📋 接下來的手動步驟："
    echo "1. 前往 https://github.com/$github_username/$repo_name"
    echo "2. 點擊 'Settings' 標籤"
    echo "3. 在左側選單中找到 'Pages'"
    echo "4. 在 'Source' 部分選擇 'Deploy from a branch'"
    echo "5. 在 'Branch' 下拉選單中選擇 'main'"
    echo "6. 點擊 'Save'"
    echo "7. 等待幾分鐘，GitHub Pages 會自動部署"
    echo ""
    echo "🌐 部署完成後，你的網站將可以通過以下網址訪問："
    echo "https://$github_username.github.io/$repo_name/"
    echo ""
    echo "📖 詳細說明請參考 deploy.md 檔案"
else
    echo "❌ 推送失敗，請檢查："
    echo "1. GitHub 倉庫是否已創建"
    echo "2. 網路連線是否正常"
    echo "3. GitHub 認證是否正確"
fi
