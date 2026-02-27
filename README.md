# 🚀 Angular Auto Runner
**Automated startup script for seamless Angular development on Windows.**

A lightweight, powerful automation script designed to permanently fix common Angular development issues on Windows, including broken Live Reload (HMR) and `EPERM` cache errors.

## 🐛 The Problem
Many Windows users face issues when developing with Angular:
* **Live Reload stops working** due to Windows File Watcher limitations.
* **EPERM errors** occur because the `.angular/cache` folder gets locked.
* **Dependency Gaps:** Risk of running the project before `npm install` is complete.

## 💡 The Solution
This script automates the optimal startup process for any Angular project on Windows, ensuring a smooth and error-free workflow.

### Key Features:
1. **Auto Cache Clean:** Deletes the `.angular/cache` folder before starting to prevent permission (EPERM) errors.
2. **Smart Dependency Check:** Verifies if `node_modules` exists and runs `npm install` automatically if missing.
3. **Forced Live Reload:** Runs `ng serve` with `--hmr` and `--poll 2000` to force Windows to detect file changes instantly.

## 🛠️ How to Use
1. Download the `Run-Project.bat` file.
2. Place it in the **root directory** of your Angular project (next to `package.json`).
3. **Double-click** the file to start your development environment.

---
🔗 **Connect & Support:**
* **Maintainer:** [Mohammed Al-Sarraj](https://linkedin.com/in/mohammedsarraj)
* **Email:** mfsarraj6@gmail.com
