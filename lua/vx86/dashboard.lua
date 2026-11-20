-- vx86 dashboard: replaces the NvChad logo with "VX86" in a teal -> yellow gradient.
-- nvdash colors the whole header with one highlight group, so the logo is drawn as
-- multicolumn button rows where every character is its own cell with its own color.

local M = {}

M.logo = {
  "██╗   ██╗██╗  ██╗ █████╗  ██████╗ ",
  "██║   ██║╚██╗██╔╝██╔══██╗██╔════╝ ",
  "██║   ██║ ╚███╔╝ ╚█████╔╝███████╗ ",
  "╚██╗ ██╔╝ ██╔██╗ ██╔══██╗██╔═══██╗",
  " ╚████╔╝ ██╔╝ ██╗╚█████╔╝╚██████╔╝",
  "  ╚═══╝  ╚═╝  ╚═╝ ╚════╝  ╚═════╝ ",
}

M.from = "#00b3a4" -- teal
M.to = "#ffd60a" -- yellow
M.steps = 24

local function hex_to_rgb(hex)
  return tonumber(hex:sub(2, 3), 16), tonumber(hex:sub(4, 5), 16), tonumber(hex:sub(6, 7), 16)
end

local function lerp_hex(a, b, t)
  local r1, g1, b1 = hex_to_rgb(a)
  local r2, g2, b2 = hex_to_rgb(b)
  local mix = function(x, y)
    return math.floor(x + (y - x) * t + 0.5)
  end
  return string.format("#%02x%02x%02x", mix(r1, r2), mix(g1, g2), mix(b1, b2))
end

-- (Re)define the gradient highlight groups; called on every dashboard draw so they
-- survive theme switches.
function M.set_highlights()
  for i = 0, M.steps - 1 do
    local color = lerp_hex(M.from, M.to, i / (M.steps - 1))
    vim.api.nvim_set_hl(0, "Vx86Grad" .. i, { fg = color, bold = true })
  end
  vim.api.nvim_set_hl(0, "Vx86Subtitle", { fg = M.to, italic = true })
end

-- Split a UTF-8 string into characters (LuaJIT has no utf8 library).
local function chars(s)
  return vim.fn.split(s, "\\zs")
end

-- Diagonal gradient: teal in the top-left corner, yellow in the bottom-right.
local function logo_rows()
  local rows = {}
  local height = #M.logo
  local width = vim.api.nvim_strwidth(M.logo[1])

  for r, line in ipairs(M.logo) do
    local row = { content = "fit", no_gap = true, multicolumn = true }
    for c, ch in ipairs(chars(line)) do
      local t = ((c - 1) / (width - 1)) * 0.8 + ((r - 1) / (height - 1)) * 0.2
      local step = math.floor(t * (M.steps - 1) + 0.5)
      row[#row + 1] = { txt = ch, hl = "Vx86Grad" .. step }
    end
    rows[#rows + 1] = row
  end

  return rows
end

function M.buttons()
  M.set_highlights()

  local buttons = logo_rows()

  local rest = {
    { txt = " ", no_gap = true },
    { txt = "embedded · rust · ai", hl = "Vx86Subtitle", content = "fit" },

    { txt = "\u{f002}  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "\u{f1da}  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "\u{f06a9}  Claude Code", keys = "ac", cmd = "ClaudeCode" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "\u{f11c}  Mappings", keys = "ch", cmd = "NvCheatsheet" },

    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "\u{f427}  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
      content = "fit",
    },
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  }

  vim.list_extend(buttons, rest)
  return buttons
end

return M
