return {
  -- Keep the familiar editor, with fewer moving UI elements.
  { "folke/noice.nvim", enabled = false },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      scroll = { enabled = false },
      picker = {
        sources = {
          explorer = {
            auto_close = false,
            layout = { preset = "sidebar", layout = { position = "left", width = 32 } },
          },
        },
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Python: select virtual environment" },
    },
    opts = { options = { picker = "snacks", activate_venv_in_terminal = true } },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Diagnostics, file path and Git remain in the existing status line.
      table.insert(opts.sections.lualine_x, 1, {
        function()
          local selector = package.loaded["venv-selector"]
          local env = selector and selector.venv() or vim.env.VIRTUAL_ENV or vim.env.CONDA_PREFIX
          if env and env ~= "" then
            return "venv: " .. vim.fn.fnamemodify(env, ":t")
          end
          return "venv: select [SPC c v]"
        end,
        on_click = function()
          vim.cmd("VenvSelect")
        end,
      })
      -- No clock or plugin-update counter in the working area.
      opts.sections.lualine_z = {}
      for i = #opts.sections.lualine_x, 1, -1 do
        if opts.sections.lualine_x[i][1] == require("lazy.status").updates then
          table.remove(opts.sections.lualine_x, i)
        end
      end
    end,
  },
}
