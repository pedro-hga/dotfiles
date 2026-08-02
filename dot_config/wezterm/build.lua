local source = debug.getinfo(1, "S").source:sub(2)
local script_dir = source:match("(.*/)") or "./"

local hostname_pipe = io.popen("hostname")
local hostname = hostname_pipe:read("*a"):gsub("%s+", "")
hostname_pipe:close()

local machines = {
	desk = "modules/machines/desk.lua",
	s145 = "modules/machines/s145.lua",
}

local modules = {
	"modules/base.lua",
	machines[hostname] or "modules/machines/default.lua",
	"modules/mouse.lua",
}

local output = assert(io.open(script_dir .. "wezterm.lua", "w"))

output:write("-- Generated file. Do not edit directly.\n\n")
output:write('local wezterm = require("wezterm")\n\n')

for _, file in ipairs(modules) do
	local path = script_dir .. file
	local input = assert(io.open(path, "r"))

	output:write("-- " .. file .. "\n\n")
	output:write(input:read("*all"))
	output:write("\n\n")

	input:close()
end

output:write("return config\n")

output:close()

print("Generated wezterm.lua for " .. hostname)
