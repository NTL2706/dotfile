local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
    print("Import nvim-treesitter fail")
    return
end

local status_tree, nvim_tree = pcall(require, "nvim-tree")
if (not status_tree)
then
    print("Import nvim-tree fail")
    return
end

ts.setup {
    highlight = {
        enable = true,
        -- additional_vim_regex_highlighting = false,
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
        "c"
    },
    autotag = {
        enable = true,
    },
    sync_install = false,
    auto_install = true,
    ignore_install = {},
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

-- NOTE: config nvim-treesitter

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
        side = "left",
        -- mappings = {
        --   list = {
        --     { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        --     { key = "h",                  cb = tree_cb "close_node" },
        --     { key = "v",                  cb = tree_cb "vsplit" },
        --   },
        -- },
    },
    renderer = {
        root_folder_modifier = ":t",
        -- These icons are visible when you install web-devicons
        icons = {
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "U",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
        group_empty = true,
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    filters = {
        custom = { ".git", "node_modules" },
        dotfiles = false,
        git_ignored = false,
        git_clean = false,
        no_buffer = false,
        exclude = { ".gitignore" }
    },
})

vim.keymap.set('n', 'to', '<Cmd>NvimTreeOpen<CR>', {})
vim.keymap.set('n', 'tc', '<Cmd>NvimTreeClose<CR>', {})
