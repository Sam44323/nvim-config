require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.lsp"
require "user.telescope";
require "user.treesitter";
require "user.comment";
require "user.nvim-tree";
require "user.bufferline";

vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
vim.g.copilot_assume_mapped = true -- copilot mapping fixer
