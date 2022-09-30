$LNKFILE = "C:\Users\pypro\Documents\shortcutPath\Google.lnk"
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$LNKFILE")
$Shortcut.TargetPath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$Shortcut.IconLocation = "C:\Program Files\Google\Chrome\Application\chrome.exe,0"
$Shortcut.WorkingDirectory = "."
$Shortcut.Save()

