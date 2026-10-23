return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          root_markers = { "compile_commands.json", ".clangd", "CMakeLists.txt", "compile_flags.txt", "Makefile", ".git" },
        },
        omnisharp = {
          -- Only the language server may use a newer installed runtime.
          -- Project runtime requirements remain unchanged.
          cmd_env = { DOTNET_ROLL_FORWARD = "Major" },
          settings = {
            RoslynExtensionsOptions = { EnableAnalyzersSupport = true, EnableImportCompletion = true },
            FormattingOptions = { EnableEditorConfigSupport = true },
          },
        },
      },
    },
  },
}
