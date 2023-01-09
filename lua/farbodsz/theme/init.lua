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

--- Filetype highlights for plugins
local function set_filetype_highlights()
  vim.api.nvim_create_autocmd("FileType", {
    pattern = {
      "dirbuf",
      "Outline",
      "neotest-summary",
    },
    callback = function()
      vim.cmd("set winhighlight=Normal:NormalDark")
    end,
  })
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.g.colors_name = "farbodsz-theme"

  local hlgroups = require("farbodsz.theme.hlgroups")
  set_highlights(hlgroups)

  set_filetype_highlights()
end

return M
