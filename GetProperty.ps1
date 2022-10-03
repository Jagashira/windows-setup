# プロパティを調べたいファイルを指定
$path = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Shortcut\Google Chrome.lnk"

$shell = New-Object -COMObject Shell.Application

# フォルダとファイル名を変数に設定
$folder = Split-Path $path
$file = Split-Path $path -Leaf

$Getfolder = $shell.Namespace($folder)
$Getfile = $Getfolder.ParseName($file)

# 0-320までカンマ区切りで項目名を含めて出力
0..320 | Foreach-Object { '{0},{1},{2}' -f $_, $Getfolder.GetDetailsOf($null, $_), $Getfolder.GetDetailsOf($Getfile, $_) } |
 Out-File GetProperty.csv -Encoding default