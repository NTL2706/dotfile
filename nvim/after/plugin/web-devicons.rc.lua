local status, icons = pcall(require, "nvim-web-devicons")
if (not status) then
    print("no load nvim-web-devicons")
    return
end
--
icons.setup {
    -- your personnal icons can go here (to override)
    -- DevIcon will be appended to `name`
    -- globally enable default icons (default to false)
    color_icons = true,
    strict = true,
    override_by_filename = {
        [".gitignore"] = {
            icon = "",
            color = "#f1502f",
            name = "Gitignore"
        }

    },
    -- takes effect when `strict` is true
    override_by_extension = {
        ["log"] = {
            icon = "",
            color = "#81e043",
            name = "Log"
        }
    },
    -- will get overriden by `get_icons` option
    override = {
        zsh = {
            icon = "",
            color = "#428850",
            cterm_color = "65",
            name = "Zsh"
        }
    },
    default = true
}
