# 🔧 Activating and Using Microsoft.PowerShell_profile.ps1

The **`Microsoft.PowerShell_profile.ps1`** file is used to customise your PowerShell environment — add automatic commands, shortcuts (aliases), colours, and more.  
Follow these steps carefully 👇

---

## 🔹 Step 1: Check if the file exists

Open PowerShell (preferably **as Administrator**) and type:

```powershell
Test-Path $PROFILE
```

- If the result is **`True`** ✅, the file already exists.  
- If the result is **`False`** ❌, create the file using:

```powershell
New-Item -Path $PROFILE -ItemType File -Force
```

---

## 🔹 Step 2: Open the file for editing

Open it in Notepad:

```powershell
notepad $PROFILE
```

This opens your **Microsoft.PowerShell_profile.ps1** file in Notepad.

---

## 🔹 Step 3: Add commands to run automatically

You can add settings, aliases, or colours, for example:

```powershell
# ================================
# Microsoft.PowerShell_profile.ps1
# ================================

# Change default directory
Set-Location C:\

# Custom aliases
Set-Alias ll Get-ChildItem
Set-Alias py python
Set-Alias gs 'git status'
Set-Alias gc 'git commit'
Set-Alias gp 'git push'

# Custom prompt
function prompt {
    Write-Host ("PS " + (Get-Location).Path + ">") -ForegroundColor Green -NoNewline
    return " "
}

# Welcome message
Write-Host "Welcome to PowerShell, Hassanein!" -ForegroundColor Cyan
```

Then save and close Notepad.

---

## 🔹 Step 4: Allow script execution (important)

By default, PowerShell blocks script execution for security reasons.  
Enable it with this command (**run as Administrator**):

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Then choose **Y** (Yes) and press **Enter**.

---

## 🔹 Step 5: Restart PowerShell

Close PowerShell and open it again.  
You should now see your welcome message or any commands you added run automatically 🎯

---

## ✅ Additional Notes

- You can modify the profile file anytime to change settings or add new ones.  
- If you’re using **PowerShell 7**, the path may differ slightly, e.g.:
  ```
  C:\Users\<Your_Username>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
  ```
- To run the file manually at any time:
  ```powershell
  & $PROFILE
  ```

---

Would you like an **advanced developer version** of this file (with Git branch info, coloured prompt, and path shortening)? 😎
