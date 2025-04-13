# 🔍 PowerShell Port Scanner

A lightweight PowerShell script to scan open TCP ports on a specified target IP.  
Customized by **James Moore** for quick network enumeration in homelab or cybersecurity training environments.

---

## 🧪 Features
- Scans ports **1–1024** by default
- Uses native .NET `TcpClient` (no external modules)
- Outputs **open ports only**
- Fast and beginner-friendly

---

## ⚙️ How to Use

1. Clone or download this repo.
2. Edit the `portscan.ps1` file to change the target IP address if needed.
3. Open PowerShell **as Administrator**.
4. Run:
```powershell
powershell.exe -ExecutionPolicy Bypass -File .\portscan.ps1
