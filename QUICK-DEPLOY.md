# 🚀 快速部署指南

## 📋 3 步驟完成部署

### 步驟 1：創建 GitHub 倉庫
1. 前往 [GitHub](https://github.com) 並登入
2. 點擊右上角 "+" → "New repository"
3. 倉庫名稱：`green-bean-cake-tutorial`
4. 選擇 "Public"
5. 點擊 "Create repository"

### 步驟 2：執行自動部署腳本
```bash
./setup-github.sh
```
按照提示輸入你的 GitHub 用戶名和倉庫名稱

### 步驟 3：啟用 GitHub Pages
1. 前往你的倉庫頁面
2. Settings → Pages
3. Source: "Deploy from a branch"
4. Branch: "main"
5. 點擊 "Save"

## 🌐 完成！

幾分鐘後，你的網站將可以通過以下網址訪問：
```
https://你的用戶名.github.io/green-bean-cake-tutorial/
```

## 📱 分享你的網站

- 複製網址分享給朋友
- 在社群媒體上分享
- 嵌入到其他網站中

## 🔧 更新網站

每次修改後，執行：
```bash
git add .
git commit -m "更新內容"
git push
```

GitHub Pages 會自動重新部署你的網站！
