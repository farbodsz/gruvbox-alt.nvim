local M = {}

local function set_highlights(hlgroups)
  for group, colors in pairs(hlgroups) do
    if not vim.tbl_isempty(colors) then
      if colors.link then
        vim.cmd("highlight! link " .. group .. " " .. colors.link)
      else
        local fg = colors.fg and "guifg=" .. colors.fg .. " " or ""
        local bg = colors.bg and "guibg=" .. colors.bg .. " " or ""
        local style = colors.style and "gui=" .. colors.style .. " " or ""
        local guisp = colors.guisp and "guisp=" .. colors.guisp .. " " or ""
        vim.cmd("highlight " .. group .. " " .. fg .. bg .. style .. guisp)
      end
    end
  end
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.g.colors_name = "gruvbox-alt"

  local hlgroups = require("gruvbox-alt.hlgroups")
  set_highlights(hlgroups)
end

return M
