require("bluloco").setup({
  style = "dark", -- "auto" | "dark" | "light"
  transparent = false,
  italics = false,
  terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
})

vim.cmd("colorscheme bluloco")
