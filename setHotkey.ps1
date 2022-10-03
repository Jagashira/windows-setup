# ショートカットを作る
$WsShell = New-Object -ComObject WScript.Shell
$shortcutName = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Shortcut\vscode.lnk"
$Shortcut = $WsShell.CreateShortcut("$shortcutName")
$Shortcut.TargetPath = "C:\Program Files\Microsoft VS Code\Code.exe"
$Shortcut.IconLocation = "C:\Program Files\Microsoft VS Code\Code.exe,0"
$Shortcut.Hotkey ="CTRL+ALT+V"
$Shortcut.Save()