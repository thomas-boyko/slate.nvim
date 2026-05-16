local M = {}
local p = require('slate.palette')

local groups = {
  -- base
  Normal          = { fg = p.fg,       bg = p.bg },
  NormalFloat     = { fg = p.fg,       bg = p.bg_dark },
  NormalNC        = { fg = p.fg_muted, bg = p.bg },
  CursorLine      = { bg = p.bg_light },
  CursorLineNr    = { fg = p.fg_muted },
  LineNr          = { fg = p.ui },
  SignColumn      = { bg = p.bg },
  StatusLine      = { fg = p.fg_muted, bg = p.bg_light },
  StatusLineNC    = { fg = p.ui_light, bg = p.bg_light },
  Visual          = { bg = p.ui },
  Search          = { fg = p.bg, bg = p.orange },
  IncSearch       = { fg = p.bg, bg = p.teal },
  Pmenu           = { fg = p.fg,       bg = p.bg_light },
  PmenuSel        = { fg = p.fg,       bg = p.ui },
  PmenuSbar       = { bg = p.ui_dark },
  PmenuThumb      = { bg = p.ui_light },
  VertSplit       = { fg = p.ui_dark },
  WinSeparator    = { fg = p.ui_dark },
  TabLine         = { fg = p.fg_muted, bg = p.bg_light },
  TabLineSel      = { fg = p.fg,       bg = p.bg },
  TabLineFill     = { bg = p.bg_dark },
  Folded          = { fg = p.ui_light, bg = p.bg_light },
  FoldColumn      = { fg = p.ui,       bg = p.bg },

  -- syntax
  Comment         = { fg = p.ui_light, italic = true },
  Constant        = { fg = p.orange },
  String          = { fg = p.green },
  Number          = { fg = p.orange },
  Float           = { fg = p.orange },
  Boolean         = { fg = p.orange },
  Identifier      = { fg = p.fg },
  Function        = { fg = p.cyan },
  Keyword         = { fg = p.teal },
  Conditional     = { fg = p.teal },
  Repeat          = { fg = p.teal },
  Operator        = { fg = p.fg_muted },
  Type            = { fg = p.purple },
  StorageClass    = { fg = p.purple },
  Structure       = { fg = p.purple },
  Typedef         = { fg = p.purple },
  Special         = { fg = p.orange },
  PreProc         = { fg = p.teal },
  Include         = { fg = p.teal },
  Define          = { fg = p.teal },
  Macro           = { fg = p.teal },
  Statement       = { fg = p.teal },
  Delimiter       = { fg = p.ui_light },
  MatchParen      = { fg = p.orange, bold = true },

  -- treesitter
  ["@keyword"]          = { fg = p.teal },
  ["@keyword.function"] = { fg = p.teal },
  ["@keyword.return"]   = { fg = p.teal },
  ["@function"]         = { fg = p.cyan },
  ["@function.builtin"] = { fg = p.cyan },
  ["@method"]           = { fg = p.cyan },
  ["@string"]           = { fg = p.green },
  ["@number"]           = { fg = p.orange },
  ["@float"]            = { fg = p.orange },
  ["@boolean"]          = { fg = p.orange },
  ["@constant"]         = { fg = p.orange },
  ["@type"]             = { fg = p.purple },
  ["@type.builtin"]     = { fg = p.purple },
  ["@variable"]         = { fg = p.fg },
  ["@parameter"]        = { fg = p.fg },
  ["@property"]         = { fg = p.cyan },
  ["@field"]            = { fg = p.cyan },
  ["@comment"]          = { fg = p.ui_light, italic = true },
  ["@punctuation"]      = { fg = p.ui_light },
  ["@operator"]         = { fg = p.fg_muted },
  ["@tag"]              = { fg = p.teal },
  ["@tag.attribute"]    = { fg = p.cyan },

  -- diagnostics
  DiagnosticError       = { fg = p.red },
  DiagnosticWarn        = { fg = p.orange },
  DiagnosticInfo        = { fg = p.teal },
  DiagnosticHint        = { fg = p.cyan },
  DiagnosticUnderlineError = { undercurl = true, sp = p.red },
  DiagnosticUnderlineWarn  = { undercurl = true, sp = p.orange },

  -- git (gitsigns etc.)
  DiffAdd             = { fg = p.green,  bg = p.bg },
  DiffChange          = { fg = p.orange, bg = p.bg },
  DiffDelete          = { fg = p.red,    bg = p.bg },
  GitSignsAdd         = { fg = p.green },
  GitSignsChange      = { fg = p.orange },
  GitSignsDelete      = { fg = p.red },
}

function M.load()
  vim.cmd('highlight clear')
  vim.o.background = 'dark'
  vim.g.colors_name = 'slate'
  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
