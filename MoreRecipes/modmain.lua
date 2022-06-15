local require = GLOBAL.require
require "constants"

local assets = {
	Asset("ATLAS", "images/meatytacos.xml"),
     Asset("IMAGE", "images/meatytacos.tex"),
}

-- local prefabs = {
--     meatytacos =
--     {
--         "meatytacos",
--         "spoiled_food"
--     }
-- }

-- local function meatytacos()
--     local inst = 

local meatytacos = {
	name = "meatytacos",
	test = function(cooker, names, tags) return tags.meat == 1 and (names.tomato or names.tomato_cooked) and (tags.veggie or tags.fruit) end,
	priority = 30,
	weight = 1,
	foodtype=FOODTYPE.MEAT,
	health = 5,
	hunger = 75,
	sanity = 10,
	perishtime = TUNING.PERISH_MED,
	cooktime = 0.75,
    potlevel = "med",
}
AddCookerRecipe("cookpot", meatytacos, true)
-- All Tags: fruit, monster, sweetener, veggie, meat, fish, egg, decoration, fat, dairy, inedible, seed, magic


-- for k, recipe in pairs(foods) do
-- 	recipe.name = k
--     recipe.weight = recipe.weight or 1
--     recipe.priority = recipe.priority or 0
-- end

-- return foods