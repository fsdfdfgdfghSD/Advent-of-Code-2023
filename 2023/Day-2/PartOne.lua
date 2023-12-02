local PartOne = 0

local Cubes = {
	["red"] = 12,
	["green"] = 13,
	["blue"] = 14,
}

local IsPossible = false

for Game in io.lines("input.txt") do
	IsPossible = true

	for Number, Color in string.gmatch(Game, "(%d+) (%w+)") do
		if tonumber(Number) > Cubes[Color] then
			IsPossible = false
			break
		end
	end

	if IsPossible then
		PartOne = PartOne + tonumber(string.match(Game, "(%d+)"))
	end
end

print(PartOne)
