_G.timeCycle = true
_G.secondsStep = 10 --// 1s >> 10s
local lighting = game:GetService("Lighting")

while _G.timeCycle == true do
	task.wait(_G.secondsStep)
	local format = string.split(lighting.TimeOfDay, ":")
	format[3] += _G.secondsStep
	lighting.TimeOfDay = table.concat(format, ":")
end
