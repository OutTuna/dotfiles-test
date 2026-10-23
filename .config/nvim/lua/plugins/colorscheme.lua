-- Palette inspired by the reference: charcoal, silver, yellow and muted blue.
local c = {
  bg = "#191919", panel = "#202020", selection = "#303030",
  fg = "#c6c6c6", muted = "#686868", yellow = "#d8c94b", blue = "#8993a8",
}

return {
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      italic = { strings = false, comments = false, operators = false, folds = false, emphasis = false },
      palette_overrides = {
        dark0 = c.bg, dark1 = c.panel, dark2 = c.selection,
        dark3 = "#404040", dark4 = c.muted,
        light0 = c.fg, light1 = c.fg, light2 = "#b0b0b0", light3 = "#999999", light4 = "#888888",
        gray = c.muted, bright_yellow = c.yellow, bright_orange = c.yellow,
        bright_blue = c.blue, bright_aqua = "#a0a8a0", bright_purple = "#aaa0aa",
        bright_green = "#a6b58b", bright_red = "#cc7777",
      },
      overrides = {
        Normal = { fg = c.fg, bg = c.bg },
        NormalNC = { fg = c.fg, bg = c.bg },
        NormalFloat = { fg = c.fg, bg = c.panel },
        FloatBorder = { fg = "#494949", bg = c.panel },
        SignColumn = { bg = c.bg },
        LineNr = { fg = "#555555", bg = c.bg },
        CursorLineNr = { fg = c.yellow, bold = true, bg = c.bg },
        CursorLine = { bg = "#1f1f1f" },
        Visual = { bg = "#345569" },
        MatchParen = { fg = c.fg, bg = "#325e74", bold = true },
        WinSeparator = { fg = "#363636", bg = c.bg },
        Comment = { fg = c.muted, italic = false },
        Constant = { fg = "#aaaaaa" },
        Number = { fg = c.fg },
        Boolean = { fg = "#aaaaaa" },
        Identifier = { fg = c.fg },
        Operator = { fg = c.fg },
        Delimiter = { fg = c.fg },
        Statement = { fg = c.yellow, bold = true },
        Keyword = { fg = c.yellow, bold = true },
        Function = { fg = c.blue },
        ["@variable"] = { fg = c.fg },
        ["@variable.parameter"] = { fg = c.fg },
        ["@variable.member"] = { fg = c.fg },
        ["@variable.builtin"] = { fg = c.fg },
        ["@function.builtin"] = { fg = c.yellow },
        ["@constant.builtin"] = { fg = "#aaaaaa" },
        ["@number"] = { fg = c.fg },
        ["@boolean"] = { fg = "#aaaaaa" },
        SnacksPickerDirectory = { fg = c.blue },
      },
    },
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "gruvbox" } },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local base = {
        a = { fg = c.fg, bg = "#32566a", gui = "bold" },
        b = { fg = c.fg, bg = "#303030" },
        c = { fg = c.fg, bg = "#262626" },
      }
      opts.options.theme = {
        normal = base, insert = base, visual = base, replace = base, command = base,
        inactive = { a = { fg = c.muted, bg = c.panel }, b = { fg = c.muted, bg = c.panel }, c = { fg = c.muted, bg = c.panel } },
      }
    end,
  },
}
