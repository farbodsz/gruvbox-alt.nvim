local colors = require("gruvbox-alt.colors")

return {
  ------------------------------------------------------------------------------
  -- Built-in highlight groups
  ------------------------------------------------------------------------------

  -- Cursor
  Cursor = { fg = "NONE", bg = "NONE" },
  lCursor = { link = "Cursor" },
  CursorIM = { link = "Cursor" },
  CursorLine = { fg = "NONE", bg = colors.bg_light0 },
  CursorColumn = { link = "CursorLine" },
  CursorLineNr = { fg = colors.diag.warning, bg = "NONE", style = "bold" },

  -- Diff
  DiffAdd = { fg = "NONE", bg = colors.diff.add },
  DiffChange = { fg = "NONE", bg = colors.diff.change },
  DiffDelete = { fg = "NONE", bg = colors.diff.delete },
  DiffText = { fg = "NONE", bg = colors.diff.text },

  -- Folds
  Folded = { fg = colors.gray, bg = colors.bg_light0, style = "italic" },
  FoldColumn = { fg = colors.gray, bg = colors.bg_light0 },

  -- Sign and color column
  ColorColumn = { bg = colors.bg_light0 },
  SignColumn = { fg = colors.bg_light2, bg = "NONE" },
  SignColumnSB = { link = "SignColumn" },
  LineNr = { fg = colors.bg_light2 },
  VertSplit = { fg = colors.bg_dark, bg = colors.bg_dark },

  -- Searching
  Search = { fg = "NONE", bg = colors.bg_search },
  IncSearch = { fg = "NONE", bg = colors.bg_search },

  -- Messages and prompts
  ModeMsg = { fg = colors.diag.warning, style = "bold", bg = "NONE" },
  MsgArea = { fg = colors.fg_dark, bg = "NONE" },
  MoreMsg = { fg = colors.diag.info, bg = colors.bg, style = "NONE" },
  Title = { fg = colors.func, style = "bold" },
  Question = { link = "MoreMsg" },
  ErrorMsg = { fg = colors.diag.error, bg = "NONE", style = "bold" },
  WarningMsg = { fg = colors.diag.warning, bg = "NONE" },

  -- Text-related
  NonText = { fg = colors.bg_light2 },
  Normal = { fg = colors.fg, bg = colors.bg },
  NormalNC = { link = "Normal" },
  NormalSB = { link = "Normal" },
  MatchParen = { fg = colors.bg_search, bg = "NONE", style = "bold" },
  Conceal = { fg = colors.bg_light3, bg = "NONE", style = "bold" },
  Directory = { fg = colors.func },
  SpecialKey = { link = "NonText" },
  Whitespace = { fg = colors.bg_light2 },

  -- Floating
  NormalFloat = { fg = colors.fg, bg = colors.bg_menu },
  FloatBorder = { fg = colors.fg_border, bg = "NONE" },

  -- Popup and wild menu
  Pmenu = { fg = colors.fg, bg = colors.bg_menu },
  PmenuSel = { fg = "NONE", bg = colors.bg_menu_sel },
  PmenuSbar = { link = "Pmenu" },
  PmenuThumb = { bg = colors.bg_menu_sel },
  WildMenu = { link = "Pmenu" },

  -- Quickfix
  QuickFixLine = { link = "CursorLine" },

  -- Spelling
  SpellBad = { style = "undercurl", guisp = colors.diag.error },
  SpellCap = { style = "undercurl", guisp = colors.diag.warning },
  SpellLocal = { style = "undercurl", guisp = colors.diag.warning },
  SpellRare = { style = "undercurl", guisp = colors.diag.warning },

  -- Status line
  StatusLine = { fg = colors.fg_dark, bg = colors.bg_status, style = "NONE" },
  StatusLineNC = {
    fg = colors.fg_comment,
    bg = colors.bg_status,
    style = "NONE",
  },

  -- Tabs
  TabLine = { bg = colors.bg_dark, fg = colors.bg_light3, style = "NONE" },
  TabLineFill = { bg = colors.bg, style = "NONE" },
  TabLineSel = { fg = colors.fg_dark, bg = colors.bg_light1, style = "NONE" },

  -- Visual
  Visual = { bg = colors.bg_visual },
  VisualNOS = { link = "Visual" },

  ------------------------------------------------------------------------------
  -- Syntax groups
  ------------------------------------------------------------------------------

  Comment = { fg = colors.fg_comment, style = "italic" },

  Constant = { fg = colors.constant },
  String = { fg = colors.string },
  Character = { fg = colors.constant },
  Number = { fg = colors.number },
  Boolean = { fg = colors.constant },
  Float = { link = "Number" },

  Identifier = { fg = colors.identifier },
  Function = { fg = colors.func },
  Statement = { fg = colors.stmt },
  Operator = { fg = colors.keyword },
  Keyword = { fg = colors.keyword },
  Exception = { fg = colors.keyword },

  PreProc = { fg = colors.preproc },
  Type = { fg = colors.type },
  Special = { fg = colors.special },

  Underlined = { fg = colors.special, style = "underline" },
  Ignore = { link = "NonText" },
  Error = { fg = colors.diag.error, bg = "NONE" },
  Todo = { fg = colors.fg, bg = colors.bg, style = "bold" },

  ------------------------------------------------------------------------------
  -- Filetypes
  ------------------------------------------------------------------------------

  -- Diff
  diffAdded = { fg = colors.git.added },
  diffRemoved = { fg = colors.git.removed },
  diffChanged = { fg = colors.git.changed },
  diffLine = { fg = colors.git.changed },

  ------------------------------------------------------------------------------
  -- Plugins
  ------------------------------------------------------------------------------

  -- GitGutter
  GitGutterAdd = { fg = colors.git.added },
  GitGutterChange = { fg = colors.git.changed },
  GitGutterDelete = { fg = colors.git.removed },

  -- NvimTree
  NvimTreeRootFolder = { fg = colors.special, style = "bold" },
  NvimTreeGitDirty = { fg = colors.git.changed },
  NvimTreeGitNew = { fg = colors.git.added },
  NvimTreeGitDeleted = { fg = colors.git.removed },
  NvimTreeSpecialFile = { fg = colors.special },

  -- Treesitter
  TSDanger = { link = "ErrorMsg" },
  TSOperator = { link = "Operator" },
  TSPunctBracket = { link = "Comment" },
  TSTagDelimiter = { link = "Comment" },
  TSTypeBuiltin = { link = "TSKeyword" },

  -- Telescope
  TelescopeBorder = { link = "FloatBorder" },
}
