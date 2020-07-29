on emacsclient(input)
	do shell script "/usr/local/bin/emacsclient -n '" & input & "'"
	tell application "Emacs" to activate
end emacsclient

on open location input
	emacsclient(input)
end open location

on open inputs
	repeat with raw_input in inputs
		set input to POSIX path of raw_input
		emacsclient(input)
	end repeat
end open

on run
	do shell script emacsclient("")
end run