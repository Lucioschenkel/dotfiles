-- Lua

return {
  { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
  -- Configure LazyVim to load midnight
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "midnight",
    },
  },
}
