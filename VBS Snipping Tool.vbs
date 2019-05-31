'Capture a rectangular screen region to clipboard - using Snipping Tool non-interactively.
'Created for Winhelponline.com by Ramesh Srinivasan on January 20 2017.

Dim WshShell : Set WshShell = WScript.CreateObject("Wscript.Shell")

'Set the Snipping Tool capture or Snip mode in this value.
strSnipMode = "HKCU\SOFTWARE\Microsoft\Windows\TabletPC\Snipping Tool\CaptureMode"

'CaptureMode DWORD values
	'1 - Free-form Snip
	'2 - Rectangular Snip
	'3 - Window Snip

'We set CaptureMode to 2 for Rectangular Snip
WshShell.RegWrite strSnipMode, 2, "REG_DWORD"

'Launch the Snipping Tool to capture screen region
WshShell.Run "snippingtool.exe /clip",,True
Set WshShell = Nothing

