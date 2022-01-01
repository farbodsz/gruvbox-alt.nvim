local palette = require("gruvbox-alt.palette")

return {
  bg = palette.dark0_hard,
  bg_dark = palette.darkest,
  bg_light0 = palette.dark1,
  bg_light1 = palette.dark2,
  bg_light2 = palette.dark3,
  bg_light3 = palette.dark4,

  bg_menu = palette.darkest,
  bg_menu_sel = palette.faded_aqua,

  bg_status = palette.darkest,
  bg_visual = palette.light4,
  bg_search = palette.faded_yellow,

  fg_border = palette.dark3,
  fg_dark = palette.light1,
  fg_reverse = palette.light4,

  fg_comment = palette.gray,
  fg = palette.light0,
  fg_soft = palette.light0_soft,

  -- Syntax colors
  constant = palette.bright_purple,
  string = palette.bright_green,
  number = palette.bright_purple,
  identifier = palette.bright_blue,
  func = palette.light0,
  stmt = palette.bright_red, --statement
  keyword = palette.bright_red, --keyword
  preproc = palette.bright_aqua, --preproc
  type = palette.bright_yellow,
  special = palette.bright_orange, -- special
  sp2 = palette.bright_red, -- exception
  sp3 = palette.bright_red, -- exception
  br = palette.gray, -- break
  re = palette.bright_aqua, -- regex or escape
  dep = palette.gray,

  diag = {
    error = palette.bright_red,
    warning = palette.bright_orange,
    info = palette.bright_blue,
    hint = palette.bright_aqua,
  },

  -- TODO: these need to be lighter!
  diff = {
    add = palette.faded_green,
    delete = palette.faded_red,
    change = palette.faded_blue,
    text = palette.faded_yellow,
  },

  git = {
    added = palette.bright_green,
    removed = palette.bright_red,
    changed = palette.bright_aqua,
  },
}
