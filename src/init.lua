
local function newSet(values)
	local set = {}
	for _, v in ipairs(values) do
		set[v] = true
	end
	return set
end

local Symbols = newSet{ "[", "]", ",", "=", "{", "}" , "."}
