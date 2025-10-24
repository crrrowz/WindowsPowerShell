<h1 align="center">PowerShell Profile — Log Keeper</h1>

<p align="center">
  <a href="README/READMEAR.md">🇸🇦 Arabic</a> • 
  <a href="README/READMEEN.md">🇬🇧 English</a>
</p>

<table>
<tr>
<td width="40%" align="center">
  <img src="https://raw.githubusercontent.com/github/explore/main/topics/powershell/powershell.png" width="300" />
</td>
<td width="60%" valign="middle">

**PowerShell Profile — Log Keeper** is an intelligent **Profile.ps1** script that automatically creates a separate PowerShell history file for each directory you work in.  
Whenever you enter a new folder, it generates a dedicated **PowerShellHistory.txt** file that stores all executed commands and their outputs for that specific path.  
This allows you to easily review, search, and recover commands specific to each project.

</td>
</tr>
</table>

<p align="center">
  <a href="https://github.com/your-repo/releases/tag/v1.0" target="_blank">
    🖥️ Download Release V1
  </a>
</p>

---

## ⚙️ Project Idea

The script customises **Microsoft.PowerShell_profile.ps1** to dynamically set a new PowerShell history file path based on the current working directory.  
It also uses the **PowerShell.OnLocationChanged** event (available in PowerShell 7+) to automatically update the log path whenever you change directories.
