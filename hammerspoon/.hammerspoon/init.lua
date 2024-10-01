-- Application switcher
mehShortcuts = {
	{ "A", "Arc" },
	{ "B", "Bitwarden" },
	{ "C", "Visual Studio Code" },
	{ "D", "Discord" },
	{ "E", "Microsoft Teams" },
	{ "I", "IINA" },
	{ "M", "Mail" },
	{ "N", "Notes" },
	{ "P", "1Password" },
	{ "S", "Slack" },
	{ "T", "Kitty" },
	{ "J", "Cypress" },
	{ "W", "WhatsApp" },
}

for i, shortcut in ipairs(mehShortcuts) do
	hs.hotkey.bind({ "ctrl", "shift", "option" }, shortcut[1], function()
		hs.application.launchOrFocus(shortcut[2])
	end)
end

-- Window mover
hs.window.animationDuration = 0
hs.loadSpoon("WindowHalfsAndThirds")

function moveWindowToDisplay(display, half)
	return function()
		local displays = hs.screen.allScreens()
		local win = hs.window.focusedWindow()
		win:moveToScreen(displays[display], false, true)
		if half == 0 then
			spoon.WindowHalfsAndThirds:leftHalf(win)
		end
		if half == 1 then
			win:maximize()
		end
		if half == 2 then
			spoon.WindowHalfsAndThirds:rightHalf(win)
		end
	end
end

hs.hotkey.bind({ "ctrl", "shift", "option" }, "1", moveWindowToDisplay(3, 0))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "2", moveWindowToDisplay(3, 1))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "3", moveWindowToDisplay(3, 2))

hs.hotkey.bind({ "ctrl", "shift", "option" }, "4", moveWindowToDisplay(2, 0))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "5", moveWindowToDisplay(2, 1))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "6", moveWindowToDisplay(2, 2))

hs.hotkey.bind({ "ctrl", "shift", "option" }, "7", moveWindowToDisplay(1, 0))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "8", moveWindowToDisplay(1, 1))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "9", moveWindowToDisplay(1, 2))
