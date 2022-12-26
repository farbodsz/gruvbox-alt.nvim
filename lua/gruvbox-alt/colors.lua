local palette = require("gruvbox-alt.palette")
local util = require("gruvbox-alt.util")

local colors = {
  bg = palette.badwolf_dark0,
  bg_dark = palette.badwolf_dark0_darker,
  bg_light0 = palette.dark1,
  bg_light1 = palette.dark2,
  bg_light2 = palette.dark3,
  bg_light3 = palette.dark4,

  bg_menu = palette.dark1,
  bg_menu_sel = palette.dark3,
  bg_search = palette.faded_yellow,
  bg_status = palette.badwolf_dark0_darker,
  bg_visual = palette.dark3,

  fg = palette.light0,
  fg_border = palette.dark3,
  fg_comment = palette.gray,
  fg_dark = palette.light1,

  -- Syntax colors
  constant = palette.bright_purple,
  string = palette.bright_green,
  number = palette.bright_purple,
  attribute = palette.bright_blue,
  variable = palette.light0,
  func = palette.light0,
  stmt = palette.bright_red,
  keyword = palette.bright_red,
  preproc = palette.bright_aqua,
  type = palette.bright_yellow,
  special = palette.bright_orange,

  diag = {
    error = palette.bright_red,
    warning = palette.bright_orange,
    info = palette.bright_blue,
    hint = palette.bright_aqua,
  },

  git = {
    added = palette.neutral_green,
    removed = palette.neutral_red,
    changed = palette.neutral_blue,
    changed_text = palette.neutral_yellow,
  },
}

colors.diff = {
  add = util.darken(colors.git.added, 0.2),
  delete = util.darken(colors.git.removed, 0.2),
  change = util.darken(colors.git.changed, 0.2),
  text = util.darken(colors.git.changed_text, 0.2),
}

return colors
