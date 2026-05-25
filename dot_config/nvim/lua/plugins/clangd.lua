return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false, -- skip Mason auto-install
          cmd = {
            vim.fn.exepath("clangd"), -- Homebrew LLVM from PATH
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
            "--pch-storage=memory",
            "-j=8",
          },
        },
      },
    },
  },
}
