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
	TopHalf = {},
	BottomHalf = {},
	TopLeft = {},
	BottomLeft = {},
	TopRight = {},
	BottomRight = {},
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
		if position == Position.TopHalf then
			spoon.WindowHalfsAndThirds:topHalf(win)
		end
		if position == Position.BottomHalf then
			spoon.WindowHalfsAndThirds:bottomHalf(win)
		end
		if position == Position.TopLeft then
			spoon.WindowHalfsAndThirds:topLeft(win)
		end
		if position == Position.BottomLeft then
			spoon.WindowHalfsAndThirds:bottomLeft(win)
		end
		if position == Position.TopRight then
			spoon.WindowHalfsAndThirds:topRight(win)
		end
		if position == Position.BottomRight then
			spoon.WindowHalfsAndThirds:bottomRight(win)
		end
	end
end

hs.loadSpoon("RecursiveBinder")

spoon.RecursiveBinder.escapeKey = { {}, "escape" } -- Press escape to abort

local singleKey = spoon.RecursiveBinder.singleKey

local monitor1 = {
	[singleKey("1", "1/3 top")] = MoveWindowToDisplay(3, Position.TopThird),
	[singleKey("2", "1/3 middle")] = MoveWindowToDisplay(3, Position.MiddleThirdV),
	[singleKey("3", "1/3 bottom")] = MoveWindowToDisplay(3, Position.BottomThird),
	[singleKey("4", "1/2 top")] = MoveWindowToDisplay(3, Position.TopHalf),
	[singleKey("5", "1/2 bottom")] = MoveWindowToDisplay(3, Position.BottomHalf),
	[singleKey("6", "2/3 top")] = MoveWindowToDisplay(3, Position.TopTwoThird),
	[singleKey("7", "2/3 bottom")] = MoveWindowToDisplay(3, Position.BottomTwoThird),
	[singleKey("8", "full")] = MoveWindowToDisplay(3, Position.Maximize),
}

local monitor2 = {
	[singleKey("1", "1/3 left")] = MoveWindowToDisplay(2, Position.LeftThird),
	[singleKey("2", "1/3 middle")] = MoveWindowToDisplay(2, Position.MiddleThirdH),
	[singleKey("3", "1/3 right")] = MoveWindowToDisplay(2, Position.RightThird),
	[singleKey("4", "1/2 left")] = MoveWindowToDisplay(2, Position.LeftHalf),
	[singleKey("5", "1/2 right")] = MoveWindowToDisplay(2, Position.RightHalf),
	[singleKey("6", "2/3 left")] = MoveWindowToDisplay(2, Position.LeftTwoThird),
	[singleKey("7", "2/3 right")] = MoveWindowToDisplay(2, Position.RightTwoThird),
	[singleKey("8", "full")] = MoveWindowToDisplay(2, Position.Maximize),
	[singleKey("=", "top left")] = MoveWindowToDisplay(2, Position.TopLeft),
	[singleKey("`", "bottom left")] = MoveWindowToDisplay(2, Position.BottomLeft),
	[singleKey("\\", "top right")] = MoveWindowToDisplay(2, Position.TopRight),
	[singleKey("-", "bottom right")] = MoveWindowToDisplay(2, Position.BottomRight),
}

local monitor3 = {
	[singleKey("1", "1/3 left")] = MoveWindowToDisplay(1, Position.LeftThird),
	[singleKey("2", "1/3 middle")] = MoveWindowToDisplay(1, Position.MiddleThirdH),
	[singleKey("3", "1/3 right")] = MoveWindowToDisplay(1, Position.RightThird),
	[singleKey("4", "1/2 left")] = MoveWindowToDisplay(1, Position.LeftHalf),
	[singleKey("5", "1/2 right")] = MoveWindowToDisplay(1, Position.RightHalf),
	[singleKey("6", "2/3 left")] = MoveWindowToDisplay(1, Position.LeftTwoThird),
	[singleKey("7", "2/3 right")] = MoveWindowToDisplay(1, Position.RightTwoThird),
	[singleKey("8", "full")] = MoveWindowToDisplay(1, Position.Maximize),
	[singleKey("=", "top left")] = MoveWindowToDisplay(1, Position.TopLeft),
	[singleKey("`", "bottom left")] = MoveWindowToDisplay(1, Position.BottomLeft),
	[singleKey("\\", "top right")] = MoveWindowToDisplay(1, Position.TopRight),
	[singleKey("-", "bottom right")] = MoveWindowToDisplay(1, Position.BottomRight),
}

hs.hotkey.bind({ "ctrl", "shift", "option" }, "1", spoon.RecursiveBinder.recursiveBind(monitor1))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "2", spoon.RecursiveBinder.recursiveBind(monitor2))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "3", spoon.RecursiveBinder.recursiveBind(monitor3))
