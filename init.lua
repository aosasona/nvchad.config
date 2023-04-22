local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g
local set_keymap = vim.api.nvim_set_keymap

g.copilot_no_tab_map = true
g.copilot_assume_mapped = true

opt.relativenumber = true
opt.spell = false
opt.number = true
opt.tabstop = 2
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99

set_keymap("i", "<M-tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- automatically unfold when opening buffer
autocmd("BufEnter", {
  pattern = "*",
  command = "normal! zv",
})
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
