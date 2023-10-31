local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua",
    "javascript",
    "python",
    "lua",
  },
  autotag = {
    enable = true,
  },
  sync_install = false,
  auto_install = true,
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }


vim.keymap.set('n', 'to', '<Cmd>NvimTreeOpen<CR>', {})
vim.keymap.set('n', 'tc', '<Cmd>NvimTreeClose<CR>', {})
