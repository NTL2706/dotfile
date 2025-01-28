-- In Lua
-- require('nightfox').setup({
--     options = {
--         -- Compiled file's destination location
--         compile_path = vim.fn.stdpath("cache") .. "/nightfox",
--         compile_file_suffix = "_compiled", -- Compiled file suffix
--         transparent = false,               -- Disable setting background
--         terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--         dim_inactive = false,              -- Non focused panes set to alternative background
--         module_default = true,             -- Default enable value for modules
--         colorblind = {
--             enable = true,                 -- Enable colorblind support
--             simulate_only = false,         -- Only show simulated colorblind colors and not diff shifted
--             severity = {
--                 protan = 0,                -- Severity [0,1] for protan (red)
--                 deutan = 0,                -- Severity [0,1] for deutan (green)
--                 tritan = 0,                -- Severity [0,1] for tritan (blue)
--             },
--         },
--         styles = {             -- Style to be applied to different syntax groups
--             comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
--             conditionals = "NONE",
--             constants = "NONE",
--             functions = "NONE",
--             keywords = "NONE",
--             numbers = "NONE",
--             operators = "NONE",
--             strings = "NONE",
--             types = "NONE",
--             variables = "NONE",
--         },
--         inverse = { -- Inverse highlight for different types
--             match_paren = false,
--             visual = false,
--             search = false,
--         },
--         modules = { -- List of various plugins and additional options
--             -- ...
--         },
--     },
--     palettes = {},
--     specs = {},
--     groups = {},
-- })

-- setup must be called before loading
-- vim.cmd("colorscheme nightfox")
-- -- Alternatively
-- require("everforest").load()
--


-- local status, colorscheme = pcall(require, "colorbuddy")
-- if (not status)
-- then
--     print("No load colorbuddy")
--     return
-- end
-- local status_cobalt2, cobalt2 = pcall(require, "cobalt2")
-- if (not status_cobalt2)
-- then
--     print("No load cobalt2")
--     return
-- end
-- colorscheme.colorscheme("cobalt2")


-- file: colors/my-colorscheme-name.lua
-- Set up your custom colorscheme if you want
-- local dracula = require("dracula")
-- dracula.setup({
--     -- customize dracula color palette
--     colors = {
--         bg = "#282A36",
--         fg = "#F8F8A1",
--         selection = "#44475A",
--         comment = "#6C7B9C",
--         red = "#FF5555",
--         orange = "#FFB86C",
--         yellow = "#F1FA8C",
--         green = "#50FA7B",
--         purple = "#BD93F9",
--         cyan = "#8BE9FD",
--         pink = "#FF79C6",
--         bright_red = "#FF6E6E",
--         bright_green = "#69FF94",
--         bright_yellow = "#FFFFA5",
--         bright_blue = "#D6ACFF",
--         bright_magenta = "#FF92DF",
--         bright_cyan = "#A4FFFF",
--         bright_white = "#E6E6E6",
--         menu = "#262833",
--         visual = "#4B5362",
--         gutter_fg = "#5B6273",
--         nontext = "#4A4F58",
--         white = "#D1D7DF",
--         black = "#191A21",
--     },
--     -- show the '~' characters after the end of buffers
--     show_end_of_buffer = true,    -- default false
--     -- use transparent background
--     transparent_bg = true,        -- default false
--     -- set custom lualine background color
--     lualine_bg_color = "#44475a", -- default nil
--     -- set italic comment
--     italic_comment = true,        -- default false
--     -- overrides the default highlights with table see `:h synIDattr`
--     overrides = {},
--     -- You can use overrides as table like this
--     -- overrides = {
--     --   NonText = { fg = "white" }, -- set NonText fg to white
--     --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
--     --   Nothing = {} -- clear highlight of Nothing
--     -- },
--     -- Or you can also use it like a function to get color from theme
--     -- overrides = function (colors)
--     --   return {
--     --     NonText = { fg = colors.white }, -- set NonText fg to white of theme
--     --   }
--     -- end,
-- })
--
-- local colors = require('dracula').colors()
--
--
-- require("tokyonight").setup({
--     -- your configuration comes here
--     -- or leave it empty to use the default settings
--     transstyle = "night",   -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
--     light_style = "day",
--     parent = true,          -- Enable this to disable setting the background color
--     terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
--     styles = {
--         -- Style to be applied to different syntax groups
--         -- Value is any valid attr-list value for `:help nvim_set_hl`
--         comments = { italic = true },
--         keywords = { italic = true },
--         functions = {},
--         variables = {},
--         -- Background styles. Can be "dark", "transparent" or "normal"
--         sidebars = "transparent",    -- style for sidebars, see below
--         floats = "transparent",      -- style for floating windows
--     },
--     sidebars = { "qf", "help" },     -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--     day_brightness = 0.9,            -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--     hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--     dim_inactive = true,             -- dims inactive windows
--     lualine_bold = false,            -- When `true`, section headers in the lualine theme will be bold
--
--     --- You can override specific color groups to use other groups or a hex color
--     --- function will be called with a ColorScheme table
--     ---@param colors ColorScheme
--     on_colors = function(colors) end,
--
--     --- You can override specific highlights to use other groups or a hex color
--     --- function will be called with a Highlights and ColorScheme table
--     ---@param highlights Highlights
--     ---@param colors ColorScheme
--     on_highlights = function(highlights, colors) end,
-- })
-- vim.o.background = "dark"
-- vim.cmd [[colorscheme tokyonight]]



vim.cmd("colorscheme kanagawa")


-- TODO: hidden background colors
-- vim.cmd([[highlight Normal guibg=none ctermbg=none]])
-- vim.cmd([[highlight LineNr guibg=none ctermbg=none]])
-- vim.cmd([[highlight Folded guibg=none ctermbg=none]])
-- vim.cmd([[highlight NonText guibg=none ctermbg=none]])
-- vim.cmd([[highlight SpecialKey guibg=none ctermbg=none]])
-- vim.cmd([[highlight VertSplit guibg=none ctermbg=none]])
-- vim.cmd([[highlight SignColumn guibg=none ctermbg=none]])
-- vim.cmd([[highlight EndOfBuffer guibg=none ctermbg=none]])
-- vim.cmd([[highlight TabLine guibg=none ctermbg=none]])
-- vim.cmd([[highlight TabLineSeparator guibg=none ctermbg=none]])
-- vim.cmd([[highlight TabLineFill guibg=none ctermbg=none]])
-- vim.cmd([[highlight TabLineSel guibg=none ctermbg=none]])


local status_trans, trans = pcall(require, "transparent")
if (not status_trans)
then
    print("No load transparent")
    return
end


trans.setup({  -- Optional, you don't have to run setup.
    groups = { -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer'
    },
    extra_groups = {
        "NormalFloat",   -- plugins which have float panel such as Lazy, Mason, LspInfo
        "NvimTreeNormal"
    },                   -- table: additional groups that should be cleared
    exclude_groups = {}, -- table: groups you don't want to clear
    on_clear = function() end,
})

trans.clear_prefix('BufferLine')
trans.clear_prefix('NeoTree')
trans.clear_prefix('lualine')
trans.clear_prefix('telescope')

-- vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "ExtraGroup" })
