local entity

-- [[Remove fuel acceleration and top speed bonuses]]

-- Solid Fuel
entity = data.raw["item"]["solid-fuel"]
if entity then
	entity["fuel_acceleration_multiplier"] = 1.1
	entity["fuel_top_speed_multiplier"] = 1
end

-- Rocket Fuel
entity = data.raw["item"]["rocket-fuel"]
if entity then
	entity["fuel_acceleration_multiplier"] = 1.2
	entity["fuel_top_speed_multiplier"] = 1
end

-- Nuclear Fuel
entity = data.raw["item"]["nuclear-fuel"]
if entity then
	entity["fuel_acceleration_multiplier"] = 1.5
	entity["fuel_top_speed_multiplier"] = 1
end

--[[
	Changes to rolling stock:
		- Increase weight
		- Reduce rolling friction
		- Set different top speeds for different rolling stock
--]]

-- Locomotive
entity = data.raw["locomotive"]["locomotive"]
if entity then
	entity["max_speed"] = 0.931		-- 125 mph
	entity["friction_force"] = 0.1
	entity["weight"] = 6000
end

-- Cargo Wagon
entity = data.raw["cargo-wagon"]["cargo-wagon"]
if entity then
	entity["max_speed"] = 0.745		-- 100 mph
	entity["friction_force"] = 0.1
	entity["weight"] = 3000
end

-- Fluid Wagon
entity = data.raw["fluid-wagon"]["fluid-wagon"]
if entity then
	entity["max_speed"] = 0.745		-- 100 mph
	entity["friction_force"] = 0.1
	entity["weight"] = 3000
end

-- Artillery Wagon
entity = data.raw["artillery-wagon"]["artillery-wagon"]
if entity then
	entity["max_speed"] = 0.745		-- 100 mph
	entity["friction_force"] = 0.1
	entity["weight"] = 12000
end

-- Support for Mini Trains (https://mods.factorio.com/mod/Mini_Trains)

-- Mini Locomotive
entity = data.raw["locomotive"]["mini-locomotive"]
if entity then
	entity["max_speed"] = 0.298		-- 40 mph
	entity["friction_force"] = 0.1
	entity["weight"] = 2000
end

-- Mini Cargo Wagon
entity = data.raw["cargo-wagon"]["mini-cargo-wagon"]
if entity then
	entity["max_speed"] = 0.447		-- 60 mph
	entity["friction_force"] = 0.1
	entity["weight"] = 2000
	entity["inventory_size"] = 24

	-- Fix to make a train with a mini cargo wagon at the front stop in the right place at a train stop
	entity["joint_distance"] = 2
	entity["connection_distance"] = 3
end

entity = data.raw["fluid-wagon"]["mini-fluid-wagon"]
if entity then
	entity["max_speed"] = 0.447		-- 60 mph
	entity["friction_force"] = 0.1
	entity["weight"] = 2000

	-- Fix to make a train with a mini fluid wagon at the front stop in the right place at a train stop
	entity["joint_distance"] = 2
	entity["connection_distance"] = 3
end