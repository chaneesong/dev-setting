local bluloco_setup, bluloco = pcall(require, "bluloco")
-- local transparent_setup, transparent = pcall(require, "transparent")

-- if not transparent_setup then
--   print("not found transparent")
--   return
-- end

if not bluloco_setup then
  print("not found bluloco theme")
  return
end

bluloco.setup({
  style = "dark", -- "auto" | "dark" | "light"
  transparent = false,
  italics = false,
  terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
})

-- transparent.setup({
--   enable = true, -- boolean: enable transparent
--   extra_groups = { -- table/string: additional groups that should be cleared
--     -- In particular, when you set it to 'all', that means all available groups
--     -- example of akinsho/nvim-bufferline.lua
--     "NvimTreeNormal",
--     "BufferLineTabClose",
--     "BufferLineFill",
--     "BufferLineBackground",
--     "BufferLineSeparator",
--     "BufferLineIndicatorSelected",
--   },
--   exclude = {}, -- table: groups you don't want to clear
-- })

vim.cmd("colorscheme bluloco")
