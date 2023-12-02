local PartOne = 0

local function FindLeft(Line)
	for i = 1, #Line do
		if tonumber(string.sub(Line, i, i)) then
			return string.sub(Line, i, i)
		end
	end
end

local function FindRight(Line)
	for i = #Line, 1, -1 do
		if tonumber(string.sub(Line, i, i)) then
			return string.sub(Line, i, i)
		end
	end
end

for Line in io.lines("input.txt") do
	PartOne = PartOne + tonumber(FindLeft(Line) .. FindRight(Line))
end

print(PartOne)
