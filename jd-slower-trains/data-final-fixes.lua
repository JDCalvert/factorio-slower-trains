-- If the Multiple Unit Train Control (https://mods.factorio.com/mod/MultipleUnitTrainControl) mod
-- created MU versions of locomotives, make sure their prototypes are kept in line with this mod's changes
for name, locomotive in pairs(data.raw["locomotive"]) do
    local baseName = string.match(name, "^(.*)-mu$")
    if baseName ~= nil then        
        local baseLocomotive = data.raw["locomotive"][baseName]
        if baseLocomotive then
            locomotive.max_speed = baseLocomotive.max_speed
            locomotive.friction_force = baseLocomotive.friction_force
            locomotive.weight = baseLocomotive.weight
        end
    end
end
