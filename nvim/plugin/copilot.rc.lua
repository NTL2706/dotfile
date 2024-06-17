local status, copilot = pcall(require, "copilot")
if (not status) then
    print("no load copilot")
    return
end


copilot.setup({
    panel = {
        enabled = true,
        auto_refresh = true,
        -- keymap = {
        --     jump_prev = "[[",
        --     jump_next = "]]",
        --     accept = "<CR>",
        --     refresh = "gr",
        --     open = "<M-CR>"
        -- },
        -- layout = {
        --     position = "bottom", -- | top | left | right
        --     ratio = 0.4
        -- },
    },
    suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
            accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            next = "<Tab-]>",
            prev = "<Tab-[>",
            dismiss = "<C-]>",
        },
    },
    filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
    },
    copilot_node_command = 'node', -- Node.js version must be > 18.x
    server_opts_overrides = {},
})


local status_cmp, copilot_cmp = pcall(require, "copilot_cmp")
if not status_cmp then
    print("no load copilot_cmp")
    return
end

copilot_cmp.setup({})
