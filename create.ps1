#program


Set-Location C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs 


if (-not (Test-Path C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs\shortcut)){
    if(-not (Test-Path C:\ProgramData\Microsoft\Windows\"スタートメニュー"\"プログラム"\shortcut)){
        New-Item Shortcut -ItemType Directory
    }
    
}
Set-Location C:\Users\"江頭　慧"\Documents\create.ps1
# $LNKFILE = "C:\Users\pypro\Documents\shortcutPath\Google.lnk"
# $WshShell = New-Object -comObject WScript.Shell
# $Shortcut = $WshShell.CreateShortcut("$LNKFILE")
# $Shortcut.TargetPath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
# $Shortcut.IconLocation = "C:\Program Files\Google\Chrome\Application\chrome.exe,0"
# $Shortcut.WorkingDirectory = "."
# $Shortcut.Save()

