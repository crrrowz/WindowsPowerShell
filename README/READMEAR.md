# 🔧 تفعيل وتشغيل ملف Microsoft.PowerShell_profile.ps1

يُستخدم الملف **`Microsoft.PowerShell_profile.ps1`** لإعداد البيئة الشخصية في PowerShell، مثل الأوامر التلقائية، والاختصارات، وتخصيص المظهر.  
اتبع الخطوات التالية بدقة 👇

---

## 🔹 أولاً: التحقق من وجود الملف

افتح PowerShell (يفضل **كـمسؤول**) ثم اكتب الأمر التالي:

```powershell
Test-Path $PROFILE
```

- إذا كانت النتيجة **`True`** ✅، فالملف موجود بالفعل.  
- إذا كانت النتيجة **`False`** ❌، أنشئ الملف باستخدام الأمر:

```powershell
New-Item -Path $PROFILE -ItemType File -Force
```

---

## 🔹 ثانيًا: فتح الملف للتعديل

افتح الملف في المفكرة لتعديله:

```powershell
notepad $PROFILE
```

سيُفتح الملف **Microsoft.PowerShell_profile.ps1** في Notepad.

---

## 🔹 ثالثًا: إضافة الأوامر التي تريد تشغيلها تلقائيًا

يمكنك مثلاً إضافة إعدادات أو alias أو ألوان… مثل:

```powershell
# ================================
# Microsoft.PowerShell_profile.ps1
# ================================

# Alias definitions for Python versions
Set-Alias python39 "C:\\Program Files\\Python39\\python.exe"
Set-Alias python3.12 "C:\\Python312\\python.exe"

# Function to set the history file path based on the current location
function Set-HistoryPathForCurrentLocation {
    $path = (Get-Location).Path
    $historyFile = Join-Path -Path $path -ChildPath "PowerShellHistory.txt"
    Set-PSReadLineOption -HistorySavePath $historyFile
    Write-Host "PSReadLine history file set to $historyFile"
}

# Set the log file when the session starts
Set-HistoryPathForCurrentLocation

# Automatically reset the history file when the location changes (requires PowerShell 7+)
if ($PSVersionTable.PSVersion.Major -ge 7) {
    Register-EngineEvent PowerShell.OnLocationChanged -Action {
        Set-HistoryPathForCurrentLocation
    }
}

```

ثم احفظ الملف وأغلق المفكرة.

---

## 🔹 رابعًا: السماح بتنفيذ السكربتات (مهم جدًا)

بشكل افتراضي، يمنع PowerShell تشغيل الملفات مثل profile.ps1 بسبب الأمان.  
فعّل التنفيذ عبر هذا الأمر (كـمسؤول):

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

ثم اختر **Y** (نعم) واضغط **Enter**.

---

## 🔹 خامسًا: إعادة تشغيل PowerShell

أغلق PowerShell وافتحه مجددًا.  
يجب أن ترى الآن رسالتك أو أي أوامر وضعتها في الملف تعمل تلقائيًا 🎯

---

## ✅ ملاحظات إضافية

- يمكنك تعديل الملف في أي وقت لتغيير الإعدادات أو إضافة أوامر جديدة.  
- إذا كنت تستخدم **PowerShell 7**، فقد يكون المسار مختلفًا قليلًا مثل:
  ```
  C:\Users\<اسم_المستخدم>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
  ```
- لتشغيل الملف يدويًا في أي وقت:
  ```powershell
  & $PROFILE
  ```

---

هل تريد مثالًا أكثر تقدمًا بميزات مطورين (عرض فرع Git، ألوان متغيرة، ومسار مختصر)؟ 😎
