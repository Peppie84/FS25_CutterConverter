--
-- Main
--
-- Main class for initialize the cutter converters.
--
-- Copyright (c) Peppie84, 2024
-- https://github.com/Peppie84/FS25_CutterConverter

---Cutter.onLoad
---@param self table (cutter)
---@param savegame table
local function onLoad(self, savegame)
    local spec = self.spec_cutter
    local data = nil

    data = g_fruitTypeManager:getConverterDataByName('CUTTER')

    if data ~= nil then
        for input, converter in pairs(data) do
            spec.fruitTypeConverters[input] = converter
        end
    end
end

---init()
local function init()
    Cutter.onLoad = Utils.appendedFunction(Cutter.onLoad, onLoad)
end

init()
