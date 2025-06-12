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
	TopLeftThird = {},
	BottomLeft = {},
	BottomLeftThird = {},
	TopRight = {},
	TopRightThird = {},
	BottomRight = {},
	BottomRightThird = {},
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
		if position == Position.TopLeftThird then
			spoon.WindowHalfsAndThirds:topLeftThird(win)
		end
		if position == Position.BottomLeft then
			spoon.WindowHalfsAndThirds:bottomLeft(win)
		end
		if position == Position.BottomLeftThird then
			spoon.WindowHalfsAndThirds:bottomLeftThird(win)
		end
		if position == Position.TopRight then
			spoon.WindowHalfsAndThirds:topRight(win)
		end
		if position == Position.TopRightThird then
			spoon.WindowHalfsAndThirds:topRightThird(win)
		end
		if position == Position.BottomRight then
			spoon.WindowHalfsAndThirds:bottomRight(win)
		end
		if position == Position.BottomRightThird then
			spoon.WindowHalfsAndThirds:bottomRightThird(win)
		end
	end
end

hs.loadSpoon("RecursiveBinder")

spoon.RecursiveBinder.escapeKey = { {}, "escape" } -- Press escape to abort
spoon.RecursiveBinder.helperFormat = {
	atScreenEdge = 2, -- Bottom edge (default value)
	textStyle = { -- An hs.styledtext object
		font = {
			name = "Fira Code",
			size = 36,
		},
	},
}

local monitor1 = {
	[{ {}, "1" }] = MoveWindowToDisplay(3, Position.TopThird),
	[{ { "ctrl", "shift", "option" }, "1" }] = MoveWindowToDisplay(3, Position.TopThird),
	[{ {}, "2" }] = MoveWindowToDisplay(3, Position.MiddleThirdV),
	[{ { "ctrl", "shift", "option" }, "2" }] = MoveWindowToDisplay(3, Position.MiddleThirdV),
	[{ {}, "3" }] = MoveWindowToDisplay(3, Position.BottomThird),
	[{ { "ctrl", "shift", "option" }, "3" }] = MoveWindowToDisplay(3, Position.BottomThird),
	[{ {}, "4" }] = MoveWindowToDisplay(3, Position.TopHalf),
	[{ { "ctrl", "shift", "option" }, "4" }] = MoveWindowToDisplay(3, Position.TopHalf),
	[{ {}, "5" }] = MoveWindowToDisplay(3, Position.BottomHalf),
	[{ { "ctrl", "shift", "option" }, "5" }] = MoveWindowToDisplay(3, Position.BottomHalf),
	[{ {}, "6" }] = MoveWindowToDisplay(3, Position.TopTwoThird),
	[{ { "ctrl", "shift", "option" }, "6" }] = MoveWindowToDisplay(3, Position.TopTwoThird),
	[{ {}, "7" }] = MoveWindowToDisplay(3, Position.BottomTwoThird),
	[{ { "ctrl", "shift", "option" }, "7" }] = MoveWindowToDisplay(3, Position.BottomTwoThird),
	[{ {}, "8" }] = MoveWindowToDisplay(3, Position.Maximize),
	[{ { "ctrl", "shift", "option" }, "8" }] = MoveWindowToDisplay(3, Position.Maximize),
}

local monitor2 = {
	[{ {}, "1" }] = MoveWindowToDisplay(2, Position.LeftThird),
	[{ { "ctrl", "shift", "option" }, "1" }] = MoveWindowToDisplay(2, Position.LeftThird),
	[{ {}, "2" }] = MoveWindowToDisplay(2, Position.MiddleThirdH),
	[{ { "ctrl", "shift", "option" }, "2" }] = MoveWindowToDisplay(2, Position.MiddleThirdH),
	[{ {}, "3" }] = MoveWindowToDisplay(2, Position.RightThird),
	[{ { "ctrl", "shift", "option" }, "3" }] = MoveWindowToDisplay(2, Position.RightThird),
	[{ {}, "4" }] = MoveWindowToDisplay(2, Position.LeftHalf),
	[{ { "ctrl", "shift", "option" }, "4" }] = MoveWindowToDisplay(2, Position.LeftHalf),
	[{ {}, "5" }] = MoveWindowToDisplay(2, Position.RightHalf),
	[{ { "ctrl", "shift", "option" }, "5" }] = MoveWindowToDisplay(2, Position.RightHalf),
	[{ {}, "6" }] = MoveWindowToDisplay(2, Position.LeftTwoThird),
	[{ { "ctrl", "shift", "option" }, "6" }] = MoveWindowToDisplay(2, Position.LeftTwoThird),
	[{ {}, "7" }] = MoveWindowToDisplay(2, Position.RightTwoThird),
	[{ { "ctrl", "shift", "option" }, "7" }] = MoveWindowToDisplay(2, Position.RightTwoThird),
	[{ {}, "8" }] = MoveWindowToDisplay(2, Position.Maximize),
	[{ { "ctrl", "shift", "option" }, "8" }] = MoveWindowToDisplay(2, Position.Maximize),
	[{ {}, "=" }] = MoveWindowToDisplay(2, Position.TopLeft),
	[{ { "ctrl", "shift", "option" }, "=" }] = MoveWindowToDisplay(2, Position.TopLeft),
	[{ {}, "q" }] = MoveWindowToDisplay(2, Position.TopLeftThird),
	[{ { "ctrl", "shift", "option" }, "q" }] = MoveWindowToDisplay(2, Position.TopLeftThird),
	[{ {}, "`" }] = MoveWindowToDisplay(2, Position.BottomLeft),
	[{ { "ctrl", "shift", "option" }, "`" }] = MoveWindowToDisplay(2, Position.BottomLeft),
	[{ {}, "a" }] = MoveWindowToDisplay(2, Position.BottomLeftThird),
	[{ { "ctrl", "shift", "option" }, "a" }] = MoveWindowToDisplay(2, Position.BottomLeftThird),
	[{ {}, "\\" }] = MoveWindowToDisplay(2, Position.TopRight),
	[{ { "ctrl", "shift", "option" }, "\\" }] = MoveWindowToDisplay(2, Position.TopRight),
	[{ {}, "p" }] = MoveWindowToDisplay(2, Position.TopRightThird),
	[{ { "ctrl", "shift", "option" }, "p" }] = MoveWindowToDisplay(2, Position.TopRightThird),
	[{ {}, "-" }] = MoveWindowToDisplay(2, Position.BottomRight),
	[{ { "ctrl", "shift", "option" }, "-" }] = MoveWindowToDisplay(2, Position.BottomRight),
	[{ {}, ";" }] = MoveWindowToDisplay(2, Position.BottomRightThird),
	[{ { "ctrl", "shift", "option" }, ";" }] = MoveWindowToDisplay(2, Position.BottomRightThird),
}

local monitor3 = {
	[{ {}, "1" }] = MoveWindowToDisplay(1, Position.LeftThird),
	[{ { "ctrl", "shift", "option" }, "1" }] = MoveWindowToDisplay(1, Position.LeftThird),
	[{ {}, "2" }] = MoveWindowToDisplay(1, Position.MiddleThirdH),
	[{ { "ctrl", "shift", "option" }, "2" }] = MoveWindowToDisplay(1, Position.MiddleThirdH),
	[{ {}, "3" }] = MoveWindowToDisplay(1, Position.RightThird),
	[{ { "ctrl", "shift", "option" }, "3" }] = MoveWindowToDisplay(1, Position.RightThird),
	[{ {}, "4" }] = MoveWindowToDisplay(1, Position.LeftHalf),
	[{ { "ctrl", "shift", "option" }, "4" }] = MoveWindowToDisplay(1, Position.LeftHalf),
	[{ {}, "5" }] = MoveWindowToDisplay(1, Position.RightHalf),
	[{ { "ctrl", "shift", "option" }, "5" }] = MoveWindowToDisplay(1, Position.RightHalf),
	[{ {}, "6" }] = MoveWindowToDisplay(1, Position.LeftTwoThird),
	[{ { "ctrl", "shift", "option" }, "6" }] = MoveWindowToDisplay(1, Position.LeftTwoThird),
	[{ {}, "7" }] = MoveWindowToDisplay(1, Position.RightTwoThird),
	[{ { "ctrl", "shift", "option" }, "7" }] = MoveWindowToDisplay(1, Position.RightTwoThird),
	[{ {}, "8" }] = MoveWindowToDisplay(1, Position.Maximize),
	[{ { "ctrl", "shift", "option" }, "8" }] = MoveWindowToDisplay(1, Position.Maximize),
	[{ {}, "=" }] = MoveWindowToDisplay(1, Position.TopLeft),
	[{ { "ctrl", "shift", "option" }, "=" }] = MoveWindowToDisplay(1, Position.TopLeft),
	[{ {}, "q" }] = MoveWindowToDisplay(1, Position.TopLeftThird),
	[{ { "ctrl", "shift", "option" }, "q" }] = MoveWindowToDisplay(1, Position.TopLeftThird),
	[{ {}, "`" }] = MoveWindowToDisplay(1, Position.BottomLeft),
	[{ { "ctrl", "shift", "option" }, "`" }] = MoveWindowToDisplay(1, Position.BottomLeft),
	[{ {}, "a" }] = MoveWindowToDisplay(1, Position.BottomLeftThird),
	[{ { "ctrl", "shift", "option" }, "a" }] = MoveWindowToDisplay(1, Position.BottomLeftThird),
	[{ {}, "\\" }] = MoveWindowToDisplay(1, Position.TopRight),
	[{ { "ctrl", "shift", "option" }, "\\" }] = MoveWindowToDisplay(1, Position.TopRight),
	[{ {}, "p" }] = MoveWindowToDisplay(1, Position.TopRightThird),
	[{ { "ctrl", "shift", "option" }, "p" }] = MoveWindowToDisplay(1, Position.TopRightThird),
	[{ {}, "-" }] = MoveWindowToDisplay(1, Position.BottomRight),
	[{ { "ctrl", "shift", "option" }, "-" }] = MoveWindowToDisplay(1, Position.BottomRight),
	[{ {}, ";" }] = MoveWindowToDisplay(1, Position.BottomRightThird),
	[{ { "ctrl", "shift", "option" }, ";" }] = MoveWindowToDisplay(1, Position.BottomRightThird),
}

hs.hotkey.bind({ "ctrl", "shift", "option" }, "1", spoon.RecursiveBinder.recursiveBind(monitor1))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "2", spoon.RecursiveBinder.recursiveBind(monitor2))
hs.hotkey.bind({ "ctrl", "shift", "option" }, "3", spoon.RecursiveBinder.recursiveBind(monitor3))
