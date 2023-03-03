local Data = require(script.Parent)

local UserTemplate = {
    Health = 100,
    MaxHealth = 100,
}

local function Function(Table, Key, Value)
    print(Table, Key, Value) --[[ Output after line 14: self, "Health", "50" ]]
end

Data:Set("User1", UserTemplate, Function)

Data["User1"].Health = 50
