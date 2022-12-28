_G.timeCycle = true --// Runs once until it's disabled
_G.secondsStep = 10 --// 1s >> Xs
_G.timeSmoothness = 1 --// Smoothness
local lighting = game:GetService("Lighting")

while _G.timeCycle == true do
	task.wait(1 / _G.secondsStep)
	local format = string.split(lighting.TimeOfDay, ":")
	format[3] += 1 / _G.timeSmoothness
	lighting.TimeOfDay = table.concat(format, ":")
end
