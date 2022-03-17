#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.普遍roroot@122.51.221.67:/root/.ssh/authorized_keys

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
; Script Start - Add your code below here
;Run("C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe")


WinWaitActive("Windows PowerShell")
Send("scp C:\Users\Mr.Stark\.ssh\id_rsa.pub root@122.51.221.67:/root/.ssh/authorized_keys{ENTER}")
Send("ssh root@122.51.221.67{ENTER}")


;WinClose("*无标题 - 记事本")
;Local $hWnd = WinGetHandle("[CLASS:CabinetWClass]")
;MsgBox($MB_OK, "Tutorial", $hWnd)
