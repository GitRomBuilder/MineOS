--this is a test for lib downloads
local screen = require("Screen")
local bigLetters = {}

local pixelHeight = 5
local lettersInterval = 2
local unknownSymbol = "*"
local spaceWidth = 2

local function getCharTable(c)
	return ({
		["0"] = {
			{ 1, 1, 1 },
			{ 1, 0, 1 },
			{ 1, 0, 1 },
			{ 1, 0, 1 },
			{ 1, 1, 1 },
		},
		["1"] = {
			{ 0, 1, 0 },
			{ 1, 1, 0 },
			{ 0, 1, 0 },
			{ 0, 1, 0 },
			{ 1, 1, 1 },
		},
		["2"] = {
			{ 1, 1, 1 },
			{ 0, 0, 1 },
			{ 1, 1, 1 },
			{ 1, 0, 0 },
			{ 1, 1, 1 },
		},
		["3"] = {
			{ 1, 1, 1 },
			{ 0, 0, 1 },
			{ 1, 1, 1 },
			{ 0, 0, 1 },
			{ 1, 1, 1 },
		},
		["4"] = {
			{ 1, 0, 1 },
			{ 1, 0, 1 },
			{ 1, 1, 1 },
			{ 0, 0, 1 },
			{ 0, 0, 1 },
		},
		["5"] = {
			{ 1, 1, 1 },
			{ 1, 0, 0 },
			{ 1, 1, 1 },
			{ 0, 0, 1 },
			{ 1, 1, 1 },
		},
		["6"] = {
			{ 1, 1, 1 },
			{ 1, 0, 0 },
			{ 1, 1, 1 },
			{ 1, 0, 1 },
			{ 1, 1, 1 },
		},
		["7"] = {
			{ 1, 1, 1 },
			{ 0, 0, 1 },
			{ 0, 0, 1 },
			{ 0, 0, 1 },
			{ 0, 0, 1 },
		},
		["8"] = {
			{ 1, 1, 1 },
			{ 1, 0, 1 },
			{ 1, 1, 1 },
			{ 1, 0, 1 },
			{ 1, 1, 1 },
		},
		["9"] = {
			{ 1, 1, 1 },
			{ 1, 0, 1 },
			{ 1, 1, 1 },
			{ 0, 0, 1 },
			{ 1, 1, 1 },
		},




		["a"] = {
			{ 0, 1, 1, 0 },
			{ 1, 0, 0, 1 },
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
		},
		["b"] = {
			{ 1, 1, 1, 0},
			{ 1, 0, 0, 1},
			{ 1, 1, 1, 0},
			{ 1, 0, 0, 1},
			{ 1, 1, 1, 1},
		},
		["c"] = {
			{ 0, 1, 1, 1 },
			{ 1, 0, 0, 0 },
			{ 1, 0, 0, 0 },
			{ 1, 0, 0, 0 },
			{ 0, 1, 1, 1 },
		},
		["d"] = {
			{ 1, 1, 1, 1, 0 },
			{ 0, 1, 0, 0, 1 },
			{ 0, 1, 0, 0, 1 },
			{ 0, 1, 0, 0, 1 },
			{ 1, 1, 1, 1, 0 },
		},
		["e"] = {
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 1 },
		},
		["f"] = {
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 0 },
			{ 1, 0, 0, 0 },
		},
		["g"] = {
			{ 0, 1, 1, 1},
			{ 1, 0, 0, 0},
			{ 1, 0, 1, 1},
			{ 1, 0, 0, 1},
			{ 0, 1, 1, 1},
		},
		["h"] = {
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
			{ 1, 1, 1, 1},
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
		},
		["i"] = {
			{ 1, 1, 1},
			{ 0, 1, 0},
			{ 0, 1, 0},
			{ 0, 1, 0},
			{ 1, 1, 1},
		},
		["j"] = {
			{ 0, 0, 1},
			{ 0, 0, 1},
			{ 0, 0, 1},
			{ 1, 0, 1},
			{ 0, 1, 0},
		},
		["k"] = {
			{ 1, 0, 0, 1},
			{ 1, 0, 1, 0},
			{ 1, 1, 0, 0},
			{ 1, 0, 1, 0},
			{ 1, 0, 0, 1},
		},
		["l"] = {
			{ 1, 0, 0},
			{ 1, 0, 0},
			{ 1, 0, 0},
			{ 1, 0, 0},
			{ 1, 1, 1},
		},
		["m"] = {
			{ 1, 0, 0, 0, 1 },
			{ 1, 1, 0, 1, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 0, 0, 1 },
		},
		["n"] = {
			{ 1, 0, 0, 0, 1 },
			{ 1, 1, 0, 0, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 1, 0, 0, 1, 1 },
			{ 1, 0, 0, 0, 1 },
		},
		["o"] = {
			{ 0, 1, 1, 0},
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
			{ 0, 1, 1, 0},
		},
		["p"] = {
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 1 },
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 0 },
			{ 1, 0, 0, 0 },
		},
		["q"] = {
			{ 0, 1, 1, 0},
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
			{ 1, 0, 1, 1},
			{ 0, 1, 1, 0},
		},
		["r"] = {
			{ 1, 1, 1, 0},
			{ 1, 0, 0, 1},
			{ 1, 1, 1, 0},
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
		},
		["s"] = {
			{ 0, 1, 1, 1},
			{ 1, 0, 0, 0},
			{ 0, 1, 1, 0},
			{ 0, 0, 0, 1},
			{ 1, 1, 1, 0},
		},
		["t"] = {
			{ 1, 1, 1, 1, 1 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 0, 1, 0, 0 },
		},
		["u"] = {
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
			{ 1, 0, 0, 1},
			{ 0, 1, 1, 0},
		},
		["v"] = {
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 0, 0, 1 },
			{ 0, 1, 0, 1, 0 },
			{ 0, 0, 1, 0, 0 },
		},
		["w"] = {
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 0, 1, 0, 1, 0 },
		},
		["x"] = {
			{ 1, 0, 0, 0, 1 },
			{ 0, 1, 0, 1, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 1, 0, 1, 0 },
			{ 1, 0, 0, 0, 1 },
		},
		["y"] = {
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 0, 1, 1, 1 },
			{ 0, 0, 0, 1 },
			{ 1, 1, 1, 0 },
		},
		["z"] = {
			{ 1, 1, 1, 1, 1 },
			{ 0, 0, 0, 1, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 1, 0, 0, 0 },
			{ 1, 1, 1, 1, 1 },
		},
		["а"] = {
			{ 0, 1, 1, 0 },
			{ 1, 0, 0, 1 },
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
		},
		["б"] = {
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 1 },
			{ 1, 1, 1, 0 },
		},
		["в"] = {
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 1 },
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 1 },
			{ 1, 1, 1, 0 },
		},
		["г"] = {
			{ 1, 1, 1 },
			{ 1, 0, 0 },
			{ 1, 0, 0 },
			{ 1, 0, 0 },
			{ 1, 0, 0 },
		},
		["д"] = {
			{ 0, 0, 1, 1, 0 },
			{ 0, 1, 0, 1, 0 },
			{ 0, 1, 0, 1, 0 },
			{ 0, 1, 0, 1, 0 },
			{ 1, 1, 1, 1, 1 },
		},
		["е"] = {
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 1 },
		},
		["ё"] = {
			{ 1, 0, 1, 0 },
			{ 0, 0, 0, 0 },
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 1 },
		},
		["ж"] = {
			{ 1, 0, 1, 0, 1 },
			{ 0, 1, 1, 1, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 1, 1, 1, 0 },
			{ 1, 0, 1, 0, 1 },
		},
		["з"] = {
			{ 0, 1, 1, 1, 0 },
			{ 0, 0, 0, 0, 1 },
			{ 0, 0, 1, 1, 0 },
			{ 0, 0, 0, 0, 1 },
			{ 0, 1, 1, 1, 0 },
		},
		["и"] = {
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 0, 1, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 1, 1, 0, 0, 1 },
			{ 1, 0, 0, 0, 1 },
		},
		["й"] = {
			{ 0, 1, 1, 1, 0 },
			{ 0, 0, 0, 0, 0 },
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 0, 1, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 1, 1, 0, 0, 1 },
			{ 1, 0, 0, 0, 1 },
		},
		["к"] = {
			{ 1, 0, 0, 1, 0 },
			{ 1, 0, 1, 0, 0 },
			{ 1, 1, 0, 0, 0 },
			{ 1, 0, 1, 0, 0 },
			{ 1, 0, 0, 1, 0 },
		},
		["л"] = {
			{ 0, 0, 1, 1 },
			{ 0, 1, 0, 1 },
			{ 0, 1, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
		},
		["м"] = {
			{ 1, 0, 0, 0, 1 },
			{ 1, 1, 0, 1, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 0, 0, 1 },
		},
		["н"] = {
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
		},
		["о"] = {
			{ 0, 1, 1, 0 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 0, 1, 1, 0 },
		},
		["п"] = {
			{ 1, 1, 1, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
		},
		["р"] = {
			{ 1, 1, 1, 0},
			{ 1, 0, 0, 1},
			{ 1, 1, 1, 0},
			{ 1, 0, 0, 0},
			{ 1, 0, 0, 0},
		},
		["с"] = {
			{ 0, 1, 1, 1 },
			{ 1, 0, 0, 0 },
			{ 1, 0, 0, 0 },
			{ 1, 0, 0, 0 },
			{ 0, 1, 1, 1 },
		},
		["т"] = {
			{ 1, 1, 1, 1, 1 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 0, 1, 0, 0 },
		},
		["у"] = {
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 0, 1, 1, 1 },
			{ 0, 0, 0, 1 },
			{ 1, 1, 1, 0 },
		},
		["ф"] = {
			{ 0, 1, 1, 1, 0 },
			{ 1, 0, 1, 0, 1 },
			{ 0, 1, 1, 1, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 0, 1, 0, 0 },
		},
		["х"] = {
			{ 1, 0, 0, 0, 1 },
			{ 0, 1, 0, 1, 0 },
			{ 0, 0, 1, 0, 0 },
			{ 0, 1, 0, 1, 0 },
			{ 1, 0, 0, 0, 1 },
		},
		["ц"] = {
			{ 1, 0, 0, 1, 0 },
			{ 1, 0, 0, 1, 0 },
			{ 1, 0, 0, 1, 0 },
			{ 1, 0, 0, 1, 0 },
			{ 0, 1, 1, 1, 1 },
		},
		["ч"] = {
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
			{ 0, 1, 1, 1 },
			{ 0, 0, 0, 1 },
			{ 0, 0, 0, 1 },
		},
		["ш"] = {
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 0, 0, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 1, 0, 1, 0, 1 },
			{ 1, 1, 1, 1, 1 },
		},
		["щ"] = {
			{ 1, 0, 0, 0, 1, 0 },
			{ 1, 0, 0, 0, 1, 0 },
			{ 1, 0, 1, 0, 1, 0 },
			{ 1, 0, 1, 0, 1, 0 },
			{ 1, 1, 1, 1, 1, 1 },
		},
		["ъ"] = {
			{ 1, 1, 0, 0, 0 },
			{ 0, 1, 0, 0, 0 },
			{ 0, 1, 1, 1, 0 },
			{ 0, 1, 0, 0, 1 },
			{ 0, 1, 1, 1, 0 },
		},
		["ы"] = {
			{ 1, 0, 0, 0, 0, 1 },
			{ 1, 0, 0, 0, 0, 1 },
			{ 1, 1, 1, 0, 0, 1 },
			{ 1, 0, 0, 1, 0, 1 },
			{ 1, 1, 1, 0, 0, 1 },
		},
		["ь"] = {
			{ 1, 0, 0, 0 },
			{ 1, 0, 0, 0 },
			{ 1, 1, 1, 0 },
			{ 1, 0, 0, 1 },
			{ 1, 1, 1, 0 },
		},
		["э"] = {
			{ 1, 1, 1, 0 },
			{ 0, 0, 0, 1 },
			{ 0, 1, 1, 1 },
			{ 0, 0, 0, 1 },
			{ 1, 1, 1, 0 },
		},
		["ю"] = {
			{ 1, 0, 0, 1, 1, 0 },
			{ 1, 0, 1, 0, 0, 1 },
			{ 1, 1, 1, 0, 0, 1 },
			{ 1, 0, 1, 0, 0, 1 },
			{ 1, 0, 0, 1, 1, 0 },
		},
		["я"] = {
			{ 0, 1, 1, 1 },
			{ 1, 0, 0, 1 },
			{ 0, 1, 1, 1 },
			{ 1, 0, 0, 1 },
			{ 1, 0, 0, 1 },
		},


		["-"] = {
			{ 0, 0, 0 },
			{ 0, 0, 0 },
			{ 1, 1, 1 },
			{ 0, 0, 0 },
			{ 0, 0, 0 },
		},
		["_"] = {
			{ 0, 0, 0 },
			{ 0, 0, 0 },
			{ 0, 0, 0 },
			{ 0, 0, 0 },
			{ 1, 1, 1 },
		},
		["+"] = {
			{ 0, 0, 0 },
			{ 0, 1, 0 },
			{ 1, 1, 1 },
			{ 0, 1, 0 },
			{ 0, 0, 0 },
		},

		["*"] = {
			{ 0, 0, 0 },
			{ 1, 0, 1 },
			{ 0, 1, 0 },
			{ 1, 0, 1 },
			{ 0, 0, 0 },
		},
		["°"] = {
			{ 1 },
			{ 0 },
			{ 0 },
			{ 0 },
			{ 0 },
		},
		["…"] = {
			{ 0, 0, 0, 0, 0 },
			{ 0, 0, 0, 0, 0 },
			{ 0, 0, 0, 0, 0 },
			{ 0, 0, 0, 0, 0 },
			{ 1, 0, 1, 0, 1 },
		},
	})[c]
end

function bigLetters.draw(x, y, color, symbol, drawWithSymbol)
	local char

	if symbol == " " then
		return spaceWidth
	else
		char = getCharTable(symbol) or getCharTable(unknownSymbol)
	end

	for j = 1, #char do
		for i = 1, #char[j] do
			if char[j][i] == 1 then
				if not drawWithSymbol then
					screen.drawRectangle(x + i * 2 - 2, y + (pixelHeight - #char) + j - 1, 2, 1, color, 0xFFFFFF, " ")
				else
					screen.drawText(x + i * 2 - 2, y + (pixelHeight - #char) + j - 1, color, "*")
				end
			end
		end
	end

	return #char[1]
end

function bigLetters.drawText(x, y, color, stroka, drawWithSymbol)
	checkArg(4, stroka, "string")
	
	for i = 1, unicode.len(stroka) do
		x = x + bigLetters.draw(x, y, color, unicode.sub(stroka, i, i), drawWithSymbol) * 2 + lettersInterval
	end

	return x
end

function bigLetters.getTextSize(text)
	local width, height = 0, 0
	local symbol, symbolWidth, symbolHeight, char
	
	for i = 1, unicode.len(text) do
		symbol = unicode.sub(text, i, i)

		if symbol == " " then
			symbolWidth = spaceWidth
			symbolHeight = 5
		else
			char = getCharTable(symbol) or getCharTable(unknownSymbol)

			symbolHeight = #char
			symbolWidth = #char[1]
		end

		width = width + symbolWidth * 2 + lettersInterval
		height = math.max(height, symbolHeight)
	end

	return (width - lettersInterval), height
end

return bigLetters
