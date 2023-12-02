local PartTwo = 0

local NOUNS = {
	["one"] = 1,
	["two"] = 2,
	["three"] = 3,
	["four"] = 4,
	["five"] = 5,
	["six"] = 6,
	["seven"] = 7,
	["eight"] = 8,
	["nine"] = 9,
}

function FindLeft(Line)
	for i = 1, #Line do
		if tonumber(string.sub(Line, i, i)) then
			return string.sub(Line, i, i)
		end

		for Name, Value in pairs(NOUNS) do
			if string.sub(Line, i, i + #Name - 1) == Name then
				return tostring(Value)
			end
		end
	end
end

function FindRight(Line)
	for i = #Line, 1, -1 do
		if tonumber(string.sub(Line, i, i)) then
			return string.sub(Line, i, i)
		end

		for Name, Value in pairs(NOUNS) do
			if string.sub(Line, i - #Name + 1, i) == Name then
				return tostring(Value)
			end
		end
	end
end

for Line in io.lines("input.txt") do
	PartTwo = PartTwo + tonumber(FindLeft(Line) .. FindRight(Line))
end

print(PartTwo)
