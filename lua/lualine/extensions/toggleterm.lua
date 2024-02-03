-- Copyright (c) 2020-2021 hoob3rt
-- MIT license, see LICENSE for more details.

local function toggleterm_statusline()
  local term = require("toggleterm.terminal").get(vim.b.toggle_number, true)
  if term.display_name ~= nil then
    return term.display_name
  else
    return 'Terminal #' .. vim.b.toggle_number
  end

end

local M = {}

M.sections = {
  lualine_b = {{
    toggleterm_statusline,
    separator = { left = '', right = '' }
  }},
}

M.filetypes = { 'toggleterm' }

return M
