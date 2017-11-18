; chrome
^!g::
	; determines whether invisible windows are "seen" by the script
	; porototye : DetectHiddenWindows, On|Off
	; On : Hidden Windows are detected.
	; Off : this is the default hidden windows are not detected, expect by the WinShow command
	DetectHiddenWindows, On
	; Sets the matching behavior of
	; prototype : SetTileMatchMode, Match the WinTitle parameter in commands such as WinWaitMode
	; 			  SetTileMatchMode, Fast|Slow
	; MatchMode : 
	; 	1: A window's title must start with the specified WinTitle to be a match
	;	2: A window's title can contain WinTitle anywhere inside it to be a match
	;	3: A window's title must exactly match WinTitle to be a match
	SetTitleMatchMode, 2
	; Retrieves the specified window's unique ID , process ID , process name , or a list of its controls
	; it can also retrieve a list of all windows matching the specified criteria
	; prototype : WinGet, OutputVar [, Cmd, WinTitle , WinText , ExcludeTile , ExcludeText]
	WinGet, winid , ID , Google Chrome

	SetTitleMatchMode,1
	if(winid)
	{
		; Waits until the specified window exist
		; prototype : WinWait [, WinTitle , WinText , Seconds , ExcludeTitle , ExcludeText]
		WinWait, ahk_id %winid%
		; Unhides the specified window
		WinShow
		; Activates the specified window(make it foremost)
		WinActivate	; Use the window found above
		; Sets input focus to a given control on a window.
		; prototype : ControlFocus [, Control , WinTitle , WinText , ExcludeTitle , ExcludeText]
		; A : Active Window
		; if WinTitle is the letter A and the other 3 window parameters(WinText , ExcludeTitle , ExcludeText) are blank or omitted
		; the active window will be used
		ControlFocus, EditComponent2, A
		ControlSetText, EditComponent2, , A
	}
	else
	{
		RunOrActivateProgram("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")
	}
Return

; sublime text
#s::
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	WinGet, winid , ID , Sublime Text

	SetTitleMatchMode,1
	if(winid)
	{
		WinWait, ahk_id %winid%
		WinShow
		WinActivate	; Use the window found above
	}
	else
	{
		RunOrActivateProgram("D:\Sublime Text 3\sublime_text.exe")
	}
Return

; VS Code
#v::
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	WinGet, winid , ID , Visual Studio Code

	SetTitleMatchMode,1
	if(winid)
	{
		WinWait, ahk_id %winid%
		WinShow
		WinActivate	; Use the window found above
	}
	else
	{
		RunOrActivateProgram("D:\Microsoft VS Code\Code.exe")
	}
Return

; typora
#t::
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	WinGet, winid , ID , ahk_exe Typora.exe ahk_class Chrome_WidgetWin_1

	SetTitleMatchMode,1
	if(winid)
	{
		WinWait, ahk_id %winid%
		WinShow
		WinActivate
	}
	else
	{
		RunOrActivateProgram("D:\Typora\Typora.exe")
	}
Return

; NetEase Cloud Music
#w::
	; determines whether invisible windows are "seen" by the script
	; porototye : DetectHiddenWindows, On|Off
	; On : Hidden Windows are detected.
	; Off : this is the default hidden windows are not detected, expect by the WinShow command
	DetectHiddenWindows, On
	; Sets the matching behavior of the WinTitle parameter in commands such as WinWait
	; prototype : SetTileMatchMode, MatchMode
	; 			  SetTileMatchMode, Fast|Slow
	; MatchMode : 
	; 	1: A window's title must start with the specified WinTitle to be a match
	;	2: A window's title can contain WinTitle anywhere inside it to be a match
	;	3: A window's title must exactly match WinTitle to be a match
	SetTitleMatchMode, 2
	; Retrieves the specified window's unique ID , process ID , process name , or a list of its controls
	; it can also retrieve a list of all windows matching the specified criteria
	; prototype : WinGet, OutputVar [, Cmd, WinTitle , WinText , ExcludeTile , ExcludeText]
	WinGet, winID, ID, ahk_exe cloudmusic.exe ahk_class OrpheusBrowserHost
	SetTitleMatchMode,1
	if(winID)
	{
		; Waits until the specified window exist
		; prototype : WinWait [, WinTitle , WinText , Seconds , ExcludeTitle , ExcludeText]
		WinWait, ahk_id %winID%
		; Unhides the specified window
		WinShow
		; Activates the specified window(make it foremost)
		WinActivate	; Use the window found above
	}
	else
	{
		RunOrActivateProgram("D:\CloudMusic\cloudmusic.exe")
	}
Return

; Max or Restore
!m::
	WinGet, Status , MinMax , A
	if Status=0
	{
		; the window is neither minimized nor maximized
		WinMaximize, A
	}
	else if Status=1
	{
		; The window is maximized
		WinRestore, A
	}
	return
Return

; Min or Restore
^!m::
	WinGet, Status , MinMax , A
	if Status=0
	{
		; the window is neither minimized nor maximized
		WinMinimize, A
	}
	else if Status=1
	{
		; The window is maximized
		WinMinimize, A
	}
	return
Return

; qq
; #q::
	; determines whether invisible windows are "seen" by the script
	; porototye : DetectHiddenWindows, On|Off
	; On : Hidden Windows are detected.
	; Off : this is the default hidden windows are not detected, expect by the WinShow command
	DetectHiddenWindows, On
	; Sets the matching behavior of the WinTitle parameter in commands such as WinWait
	; prototype : SetTileMatchMode, MatchMode
	; 			  SetTileMatchMode, Fast|Slow
	; MatchMode : 
	; 	1: A window's title must start with the specified WinTitle to be a match
	;	2: A window's title can contain WinTitle anywhere inside it to be a match
	;	3: A window's title must exactly match WinTitle to be a match
	SetTitleMatchMode, 2
	; Retrieves the specified window's unique ID , process ID , process name , or a list of its controls
	; it can also retrieve a list of all windows matching the specified criteria
	; prototype : WinGet, OutputVar [, Cmd, WinTitle , WinText , ExcludeTile , ExcludeText]
	WinGet, winid , ID , QQ

	SetTitleMatchMode,1
	if(winid)
	{
		; Waits until the specified window exist
		; prototype : WinWait [, WinTitle , WinText , Seconds , ExcludeTitle , ExcludeText]
		WinWait, ahk_id %winid%
		; Unhides the specified window
		WinShow
		; Activates the specified window(make it foremost)
		WinActivate	; Use the window found above
	}
	else
	{
		RunOrActivateProgram("D:\QQLight\Bin\QQScLauncher.exe")
		WinWait, QQ
		Send, {Enter}
	}
Return

; total commander
^!t::
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	WinGet, winID, ID, ahk_exe TOTALCMD64.EXE ahk_class TTOTAL_CMD
	SetTitleMatchMode,1
	if(winID)
	{
		WinWait, ahk_id %winID%
		WinShow
		WinActivate
	}
	else
	{
		RunOrActivateProgram("D:\TotalCmd\TOTALCMD64.EXE")

		LoopNum := 0
		Loop
		{
			IfWinActive, ahk_class TNASTYNAGSCREEN ahk_exe TOTALCMD64.EXE
			{
				Sleep 600	; if failed , increase the value
				WinGetText, Content, A
				StringMid, Num , Content , 1 , 1
				Send {Tab}
				Sleep 100
				Loop %Num%
				{
					Send {Tab}
					; Sleep 50
				}
				Send {Enter}
				LoopNum := 1
			}
			
			if LoopNum = 1
			{
				break
			}
		}
	}
Return

; CCleaner
^+c::
	IfWinNotExist, ahk_class PiriformCCleaner ahk_exe CCleaner64.exe
	{
		RunOrActivateProgram("D:\CCleaner\CCleaner64.exe")
	}
	Else IfWinNotActive, ahk_class PiriformCCleaner ahk_exe CCleaner64.exe
	{
		WinWait, ahk_class PiriformCCleaner ahk_exe CCleaner64.exe
		WinShow
		WinActivate
	}
Return

; SmartGit
^!s::
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	WinGet, winID , ID , ahk_exe smartgit.exe ahk_class PX_WINDOW_CLASS
	SetTitleMatchMode,1
	if(winID)
	{
		WinWait, ahk_id %winID%
		WinShow
		WinActivate
	}
	else
	{
		RunOrActivateProgram("C:\Program Files (x86)\SmartGit\bin\smartgit.exe")
	}
Return

; Cmder
!c::
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	WinGet, winID , ID , ahk_exe ConEmu64.exe ahk_class VirtualConsoleClass
	SetTitleMatchMode,1
	if(winID)
	{
		WinWait, ahk_id %winID%
		WinShow
		WinActivate
	}
	else
	{
		RunOrActivateProgram("D:\Cmder\Cmder.exe")
	}
Return

; Function to run a program or activate an already running instance
RunOrActivateProgram(Program, WorkingDir="", WindowStatus=""){
	; separates a file name or url into its name , directory , extension , and drive
	; prototype : SplitPath, InputVar [, OutFileName , OutDir , OutExtension , OutNameNoExt , OutDirve]
	SplitPath Program, ExeFile
	; Performs one of the following operations on a process: checks if it exists; changes its priority; close it; waits for it to close
	; Exist: Set ErrorLevel to the Process ID(PID) if a matching process exists , or 0 otherwise
	; prototype : Process , Cmd , [, PID-or-Name , Param3]
	Process, Exist, %ExeFile% ; Save the value immediately since ErrorLevel is often changed.
	PID = %ErrorLevel%
	if (PID = 0) {
		; PID = 0 means The specified process did not appear
		; so , wo need run a new process
		Run, %Program%, %WorkingDir%, %WindowStatus%
	}else{
		; otherwise , Activate it
		WinActivate, ahk_pid %PID%
	}
}