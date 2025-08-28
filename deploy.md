# 🚀 GitHub Pages 部署指南

## 📋 部署步驟

### 1. 創建 GitHub 倉庫
1. 前往 [GitHub](https://github.com) 並登入
2. 點擊右上角的 "+" 號，選擇 "New repository"
3. 倉庫名稱建議：`green-bean-cake-tutorial` 或 `綠豆糕教學`
4. 選擇 "Public"（公開）
5. 不要勾選 "Add a README file"
6. 點擊 "Create repository"

### 2. 上傳檔案到 GitHub
```bash
# 在本地專案目錄執行
git remote add origin https://github.com/你的用戶名/倉庫名稱.git
git branch -M main
git push -u origin main
```

### 3. 啟用 GitHub Pages
1. 前往你的 GitHub 倉庫頁面
2. 點擊 "Settings" 標籤
3. 在左側選單中找到 "Pages"
4. 在 "Source" 部分選擇 "Deploy from a branch"
5. 在 "Branch" 下拉選單中選擇 "main"
6. 點擊 "Save"
7. 等待幾分鐘，GitHub Pages 會自動部署

### 4. 訪問你的網站
部署完成後，你的網站將可以通過以下網址訪問：
```
https://你的用戶名.github.io/倉庫名稱/
```

## 🎯 替代方案：使用 GitHub Desktop

如果你不熟悉命令列，也可以使用 GitHub Desktop：

1. 下載並安裝 [GitHub Desktop](https://desktop.github.com/)
2. 登入你的 GitHub 帳號
3. 點擊 "Clone a repository from the Internet"
4. 選擇你剛創建的倉庫
5. 選擇本地儲存位置
6. 將所有檔案複製到該資料夾
7. 在 GitHub Desktop 中提交並推送變更

## 📱 自訂網域（可選）

如果你有自己的網域，可以在 GitHub Pages 設定中設定自訂網域：
1. 在倉庫設定中的 Pages 部分
2. 在 "Custom domain" 欄位輸入你的網域
3. 儲存設定
4. 在你的網域服務商處設定 DNS 記錄

## 🔧 故障排除

### 影片無法播放
- 確保影片檔案格式為 .m4v
- 檢查檔案大小是否超過 GitHub 的限制（100MB）
- 考慮將影片上傳到 YouTube 或其他影片平台

### 樣式無法載入
- 確保所有 CSS 都在 HTML 檔案中
- 檢查檔案路徑是否正確

### 部署失敗
- 檢查 GitHub Actions 日誌
- 確保所有檔案都已正確提交
- 檢查倉庫設定中的 Pages 設定

## 📞 支援

如果遇到問題，可以：
1. 檢查 GitHub Pages 的官方文件
2. 在 GitHub 社群中尋求協助
3. 查看倉庫的 Issues 頁面
