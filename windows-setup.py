import tkinter as tk
from tkinter import ttk
from tkinterdnd2 import *

def drop(event):
    print(event.data)
    text.set(event.data)

# メインウィンドウの生成
root = TkinterDnD.Tk()
root.geometry("400x100")
root.title("Lavelにドラッグアンドドロップ機能追加")
# StringVarのインスタンスを格納するウィジェット変数text
text = tk.StringVar(root)
text.set("ファイルをドロップするとファイルパスを表示します")
# Lavelウィジェットの生成
label = ttk.Label(root, textvariable=text)
label.drop_target_register(DND_FILES)
label.dnd_bind("<>", drop)
# ウィジェットの配置
label.grid(row=0, column=0, padx=10)

root.mainloop()