local palette = require("gruvbox-alt.palette")

return {
  bg = palette.dark0_hard,
  bg_dark = palette.dark0_hard_darker,
  bg_light0 = palette.dark1,
  bg_light1 = palette.dark2,
  bg_light2 = palette.dark3,
  bg_light3 = palette.dark4,

  bg_menu = palette.dark1,
  bg_menu_sel = palette.dark3,
  bg_search = palette.faded_yellow,
  bg_status = palette.darkest,
  bg_visual = palette.dark3,

  fg = palette.light0,
  fg_border = palette.dark3,
  fg_comment = palette.gray,
  fg_dark = palette.light1,

  -- Syntax colors
  constant = palette.bright_purple,
  string = palette.bright_green,
  number = palette.bright_purple,
  identifier = palette.bright_blue,
  func = palette.bright_green,
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

  diff = {
    add = palette.faded_green,
    delete = palette.faded_red,
    change = palette.faded_blue,
    text = palette.faded_yellow,
  },

  git = {
    added = palette.neutral_green,
    removed = palette.neutral_red,
    changed = palette.neutral_aqua,
  },
}
