local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

local status_tree, nvim_tree = pcall(require, "nvim-tree")
if (not status)
then
    print("Import nvim-tree fail")
    return
end


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
        "typescript",
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
    auto_install = true
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

-- config nvim-treesitter

nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        custom = { ".git" },
        dotfiles = false,
        git_ignored = false,
        git_clean = false,
        no_buffer = false,
        custom = { 'node_modules' },
        exclude = { ".gitignore" }
    },
})

vim.keymap.set('n', 'to', '<Cmd>NvimTreeOpen<CR>', {})
vim.keymap.set('n', 'tc', '<Cmd>NvimTreeClose<CR>', {})
