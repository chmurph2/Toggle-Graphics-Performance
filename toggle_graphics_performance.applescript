tell application "System Preferences"
	activate
	set current pane to pane "com.apple.preference.energysaver"
end tell

tell application "System Events" to tell process "System Preferences"
	if (value of radio button "Better battery life" of radio group 1 of group 1 of window 1 is equal to 1) then
		set GPUto to "Higher Performance"
	else
		set GPUto to "Better battery life"
	end if
end tell

set question to display dialog "I will set to '" & GPUto & "' and Log out" buttons {"OK", "Cancel"} default button 2
set answer to button returned of question

tell application "System Preferences"
	activate
	set current pane to pane "com.apple.preference.energysaver"
end tell

tell application "System Events" to tell process "System Preferences"
	
	if answer is equal to "OK" then
		if GPUto is equal to "Higher Performance" then
			click radio button "Higher performance" of radio group 1 of window 1
		else
			click radio button "Better battery life" of radio group 1 of window 1
		end if
		delay 0.5
		keystroke return
	end if
end tell

delay 0.5

tell application "System Preferences"
	activate
	quit
end tell