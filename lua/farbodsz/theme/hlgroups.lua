local colors = require("farbodsz.theme.colors")

return {
  ------------------------------------------------------------------------------
  -- Built-in highlight groups (:h highlight-groups)
  ------------------------------------------------------------------------------

  -- Cursor
  Cursor = { fg = colors.bg, bg = colors.fg },
  lCursor = { link = "Cursor" },
  CursorIM = { link = "Cursor" },
  CursorLine = { bg = colors.bg_light1 },
  CursorColumn = { link = "CursorLine" },

  -- Diff
  DiffAdd = { bg = colors.diff.add },
  DiffChange = { bg = colors.diff.change },
  DiffDelete = { bg = colors.diff.delete },
  DiffText = { bg = colors.diff.text },

  -- Folds
  Folded = { fg = colors.bg_light3, bg = colors.bg_light0 },
  FoldColumn = { fg = colors.bg_light2 },

  -- Sign, color column, splits
  ColorColumn = { bg = colors.bg_light0 },
  SignColumn = { fg = colors.bg_light2, bg = "NONE" },
  SignColumnSB = { link = "SignColumn" },
  VertSplit = { link = "WinSeparator" },
  WinSeparator = { fg = colors.bg_dark, bg = colors.bg_dark },

  -- Line number
  LineNr = { fg = colors.bg_light2 },
  CursorLineNr = { fg = colors.diag.warning, style = "bold" },

  -- Searching
  Search = { fg = colors.fg, bg = colors.bg_search },
  CurSearch = { link = "Search" },
  IncSearch = { fg = colors.bg_visual, bg = colors.diag.warning },

  -- Substitution
  Substitute = { fg = colors.fg, bg = colors.git.removed },

  -- Messages and prompts
  ModeMsg = { fg = colors.diag.warning, style = "bold" },
  MsgArea = { fg = colors.fg_dark },
  MoreMsg = { fg = colors.diag.info, bg = colors.bg },
  ErrorMsg = { fg = colors.diag.error, bg = "NONE" },
  WarningMsg = { fg = colors.diag.warning, bg = "NONE" },

  Title = { fg = colors.func, style = "bold" },
  Question = { link = "MoreMsg" },

  -- Text-related
  NonText = { fg = colors.bg_light2 },
  Normal = { fg = colors.fg, bg = colors.bg },
  NormalNC = { link = "Normal" },
  NormalSB = { link = "Normal" },
  MatchParen = { fg = colors.diag.warning, bg = "NONE", style = "bold" },
  Conceal = { fg = colors.bg_light3, style = "bold" },
  SpecialKey = { link = "NonText" },
  Whitespace = { fg = colors.bg_light2 },

  -- Floating
  NormalFloat = { fg = colors.fg, bg = colors.bg_menu },
  FloatBorder = { fg = colors.fg_border, bg = colors.bg_dark },

  -- Popup and wild menu
  Pmenu = { fg = colors.fg_menu, bg = colors.bg_menu },
  PmenuSel = { fg = "NONE", bg = colors.bg_menu_sel },
  PmenuSbar = { link = "Pmenu" },
  PmenuThumb = { bg = colors.bg_search },
  WildMenu = { link = "Pmenu" },

  -- Quickfix
  QuickFixLine = { link = "CursorLine" },

  -- Spelling
  SpellBad = { style = "undercurl", guisp = colors.diag.error },
  SpellCap = { style = "undercurl", guisp = colors.diag.warning },
  SpellLocal = { style = "undercurl", guisp = colors.diag.warning },
  SpellRare = { style = "undercurl", guisp = colors.diag.warning },

  -- Status line
  StatusLine = { fg = colors.fg_dark, bg = colors.bg_status },
  StatusLineNC = { fg = colors.fg_comment, bg = colors.bg_status },

  -- Tabs and windows
  TabLine = { bg = colors.bg_dark, fg = colors.bg_light3 },
  TabLineFill = { bg = colors.bg },
  TabLineSel = { fg = colors.fg_dark, bg = colors.bg_light1 },
  Winbar = { fg = colors.fg_dark, bg = "NONE" },
  WinbarNC = { link = "Winbar" },

  -- Visual
  Visual = { bg = colors.bg_visual },
  VisualNOS = { link = "Visual" },

  ------------------------------------------------------------------------------
  -- Syntax and treesitter
  ------------------------------------------------------------------------------

  Comment = { fg = colors.fg_comment },

  Constant = { fg = colors.constant },
  String = { fg = colors.string },
  Character = { fg = colors.constant },
  Number = { fg = colors.number },
  Boolean = { fg = colors.constant },
  Float = { link = "Number" },

  Identifier = { fg = colors.identifier },
  Function = { fg = colors.fg },
  Statement = { fg = colors.stmt },
  Operator = { fg = colors.keyword },
  Keyword = { fg = colors.keyword },
  Exception = { fg = colors.keyword },

  PreProc = { fg = colors.preproc },
  Type = { fg = colors.type },
  Special = { fg = colors.special },

  Underlined = { fg = colors.special, style = "underline" },
  Ignore = { link = "NonText" },
  Error = { fg = colors.diag.error },
  Todo = { fg = colors.fg_reverse, bg = colors.diag.info, style = "bold" },

  Directory = { fg = colors.func },
  Tag = { link = "Special" },

  ["@attribute"] = { link = "Identifier" },
  ["@constructor"] = { link = "Special" },
  ["@field"] = { link = "Identifier" },
  ["@function"] = { link = "Function" },
  ["@function.call"] = { link = "Function" },
  ["@include"] = { link = "Keyword" },
  ["@keyword"] = { link = "Keyword" },
  ["@keyword.operator"] = { link = "Operator" },
  ["@label"] = { link = "Label" }, -- e.g. JSON key
  ["@method"] = { link = "Function" },
  ["@method.call"] = { link = "Function" },
  ["@namespace"] = { link = "Identifier" },
  ["@operator"] = { link = "Operator" },
  ["@property"] = { link = "Identifier" },
  ["@punctuation.bracket"] = { fg = colors.delimiter },
  ["@punctuation.delimiter"] = { fg = colors.delimiter },

  ["@string.regex"] = { fg = colors.regex },
  ["@string.escape"] = { fg = colors.regex, style = "bold" },

  ["@tag"] = { link = "Tag" },
  ["@tag.attribute"] = { link = "Identifier" },
  ["@tag.delimiter"] = { fg = colors.delimiter },

  ["@text.danger"] = { fg = colors.diag.error, bg = colors.diag_bg.error },
  ["@text.emphasis"] = { style = "italic" },
  ["@text.literal"] = { link = "String" },
  ["@text.strong"] = { style = "bold" },
  ["@text.title"] = { link = "Title" },
  ["@text.todo"] = { fg = colors.diag.hint, bg = colors.diag_bg.hint },
  ["@text.warning"] = { fg = colors.diag.warning, bg = colors.diag_bg.warning },

  ["@type.builtin"] = { link = "Keyword" },
  ["@type.qualifier"] = { link = "Keyword" }, -- e.g. C++ "public"
  ["@variable"] = { fg = colors.fg },
  ["@variable.builtin"] = { fg = colors.special2 },

  ------------------------------------------------------------------------------
  -- Filetypes
  ------------------------------------------------------------------------------

  -- Diff
  diffAdded = { fg = colors.git.added },
  diffRemoved = { fg = colors.git.removed },
  diffChanged = { fg = colors.git.changed },
  diffLine = { fg = colors.git.changed },

  -- XML
  xmlTag = { fg = colors.delimiter },
  xmlTagName = { link = "Tag" },
  xmlAttrib = { link = "Identifier" },

  ------------------------------------------------------------------------------
  -- Custom highlight groups
  ------------------------------------------------------------------------------

  NormalDark = { fg = colors.fg, bg = colors.bg_dark },

  ------------------------------------------------------------------------------
  -- Plugins
  ------------------------------------------------------------------------------

  -- Diagnostics
  DiagnosticError = { fg = colors.diag.error },
  DiagnosticWarn = { fg = colors.diag.warning },
  DiagnosticInfo = { fg = colors.diag.info },
  DiagnosticHint = { fg = colors.diag.hint },
  DiagnosticVirtualTextError = {
    fg = colors.diag.error,
    bg = colors.diag_bg.error,
  },
  DiagnosticVirtualTextWarn = {
    fg = colors.diag.warning,
    bg = colors.diag_bg.warning,
  },
  DiagnosticVirtualTextInfo = {
    fg = colors.diag.info,
    bg = colors.diag_bg.info,
  },
  DiagnosticVirtualTextHint = {
    fg = colors.diag.hint,
    bg = colors.diag_bg.hint,
  },

  -- GitGutter
  GitGutterAdd = { fg = colors.git.added },
  GitGutterChange = { fg = colors.git.changed },
  GitGutterDelete = { fg = colors.git.removed },

  -- Neotest
  NeotestNormal = { link = "NormalDark" },
  NeotestPassed = { fg = colors.git.added },
  NeotestFailed = { fg = colors.git.removed },
  NeotestRunning = { fg = colors.git.changed },
  -- NeotestSkipped = {},
  NeotestTest = { link = "Normal" },
  NeotestNamespace = { link = "@namespace" },
  -- NeotestFocused = {},
  NeotestFile = { link = "Normal" },
  NeotestDir = { link = "Directory" },
  NeotestIndent = { link = "Ignore" },
  NeotestExpandMarker = { link = "Ignore" },
  NeotestAdapterName = { link = "@namespace" },
  -- NeotestWinSelect = {},
  NeotestMarked = { fg = colors.special },
  -- NeotestTarget = {},
  -- NeotestUnknown = {},

  -- NvimTree
  NvimTreeNormal = { link = "NormalDark" },
  NvimTreeNormalNC = { link = "NvimTreeNormal" },
  NvimTreeRootFolder = { fg = colors.identifier, style = "bold" },
  NvimTreeGitDirty = { fg = colors.git.changed },
  NvimTreeGitNew = { fg = colors.git.added },
  NvimTreeGitDeleted = { fg = colors.git.removed },
  NvimTreeSpecialFile = { fg = colors.special },
  NvimTreeSymlink = { link = "Type" },
  NvimTreeFolderName = { link = "Directory" },
  NvimTreeGitStaged = { fg = colors.git.added },

  -- Telescope
  TelescopeBorder = { link = "FloatBorder" },

  -- Toggleterm (custom highlights)
  ToggletermNormal = { link = "NormalDark" },
  ToggletermNormalFloat = { link = "ToggletermNormal" },
}
