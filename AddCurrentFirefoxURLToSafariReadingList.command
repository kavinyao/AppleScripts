#!/usr/bin/env osascript

on run argv
	tell application "System Events"
		# bring firefox to front
		set frontmost of process "Firefox" to true
		# copy URL to clipboard
		keystroke "l" using command down
		keystroke "c" using command down
	end tell
	
	# wait for a while
	delay 0.5
	
	# add URL to Safari reading list
	tell application "Safari" to add reading list item (the clipboard)
end run
