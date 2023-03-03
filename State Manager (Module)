local Data = {}
function Data:Set(Identification: string, Table, Function)
    local MiddleTable = Table
    Table = {}
    local Metadata = {
        __index = function(Table, Key)
            return MiddleTable[Key]
        end,
        __newindex = function(Table, Key, Value)
            MiddleTable[Key] = Value
            Function(Table, Key, Value)
        end,
    }
    Data[Identification] = setmetatable(Table, Metadata)
end

return Data
