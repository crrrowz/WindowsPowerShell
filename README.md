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
