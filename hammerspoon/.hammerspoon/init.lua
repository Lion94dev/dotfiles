-- Application switcher
mehShortcuts = {
	{ "A", "Arc" },
	{ "B", "Bitwarden" },
	{ "C", "Calendar" },
	{ "D", "TablePlus" },
	{ "E", "Microsoft Teams" },
	{ "I", "IINA" },
	{ "M", "Mail" },
	{ "N", "Notes" },
	{ "P", "1Password" },
	{ "R", "Rider" },
	{ "S", "Slack" },
	{ "T", "Ghostty" },
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

local Position = {
	LeftThird = {},
	MiddleThirdH = {},
	RightThird = {},
	TopThird = {},
	MiddleThirdV = {},
	BottomThird = {},
	Maximize = {},
	LeftTwoThird = {},
	RightTwoThird = {},
	BottomTwoThird = {},
	TopTwoThird = {},
	LeftHalf = {},
	RightHalf = {},
}

function MoveWindowToDisplay(display, position)
	return function()
		local displays = hs.screen.allScreens()
		local win = hs.window.focusedWindow()
		win:moveToScreen(displays[display], false, true)
		if position == Position.LeftThird then
			spoon.WindowHalfsAndThirds:leftThird(win)
		end
		if position == Position.MiddleThirdH then
			spoon.WindowHalfsAndThirds:middleThirdH(win)
		end
		if position == Position.RightThird then
			spoon.WindowHalfsAndThirds:rightThird(win)
		end
		if position == Position.TopThird then
			spoon.WindowHalfsAndThirds:topThird(win)
		end
		if position == Position.MiddleThirdV then
			spoon.WindowHalfsAndThirds:middleThirdV(win)
		end
		if position == Position.BottomThird then
			spoon.WindowHalfsAndThirds:bottomThird(win)
		end
		if position == Position.Maximize then
			spoon.WindowHalfsAndThirds:maximize(win)
		end
		if position == Position.LeftTwoThird then
			spoon.WindowHalfsAndThirds:leftTwoThird(win)
		end
		if position == Position.RightTwoThird then
			spoon.WindowHalfsAndThirds:rightTwoThird(win)
		end
		if position == Position.TopTwoThird then
			spoon.WindowHalfsAndThirds:topTwoThird(win)
		end
		if position == Position.BottomTwoThird then
			spoon.WindowHalfsAndThirds:bottomTwoThird(win)
		end
		if position == Position.LeftHalf then
			spoon.WindowHalfsAndThirds:leftHalf(win)
		end
		if position == Position.RightHalf then
			spoon.WindowHalfsAndThirds:rightHalf(win)
		end
	end
end

hs.hotkey.bind({ "ctrl", "shift", "option" }, "`", MoveWindowToDisplay(3, Position.TopThird))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "=", MoveWindowToDisplay(3, Position.MiddleThirdV))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "1", MoveWindowToDisplay(3, Position.BottomThird))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "2", MoveWindowToDisplay(3, Position.TopTwoThird))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "3", MoveWindowToDisplay(3, Position.BottomTwoThird))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "4", MoveWindowToDisplay(3, Position.Maximize))

hs.hotkey.bind({ "ctrl", "shift", "option" }, "5", MoveWindowToDisplay(2, Position.LeftThird))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "6", MoveWindowToDisplay(2, Position.MiddleThirdH))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "7", MoveWindowToDisplay(2, Position.RightThird))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "8", MoveWindowToDisplay(2, Position.LeftTwoThird))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "9", MoveWindowToDisplay(2, Position.RightTwoThird))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "0", MoveWindowToDisplay(2, Position.LeftHalf))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "\\", MoveWindowToDisplay(2, Position.RightHalf))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "-", MoveWindowToDisplay(2, Position.Maximize))

hs.hotkey.bind({ "ctrl", "shift", "option" }, "'", MoveWindowToDisplay(1, Position.Maximize))
