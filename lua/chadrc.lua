-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- vx86 dashboard (lua/vx86/dashboard.lua). header/buttons are functions so they
-- replace NvChad's defaults instead of being deep-merged with them.
M.nvdash = {
  load_on_startup = true,
  header = function()
    return {}
  end,
  buttons = function()
    return require("vx86.dashboard").buttons()
  end,
}

-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
